(ns paxton.core
  (:require [net.n01se.clojure-jna :as jna])
  (:import (com.sun.jna Pointer Callback))
  (:gen-class))

(def wlc-init (jna/to-fn Integer wlc/wlc_init))

(def wlc-run (jna/to-fn Void wlc/wlc_run))
(def wlc-init (jna/to-fn Boolean wlc/wlc_init))

(def log-set-handler (jna/to-fn Void wlc/wlc_log_set_handler))

(def view-set-mask (jna/to-fn Void wlc/wlc_view_set_mask))
(def view-get-output (jna/to-fn Pointer wlc/wlc_view_get_output))

(def view-bring-to-front (jna/to-fn Void wlc/wlc_view_bring_to_front ))
(def view-focus (jna/to-fn Void wlc/wlc_view_focus ))
(def view-set-state (jna/to-fn Void wlc/wlc_view_set_state ))

(def pointer-set-position (jna/to-fn Void wlc/wlc_pointer_set_position))

(def output-get-mask (jna/to-fn Pointer wlc/wlc_output_get_mask ))

(def set-view-created-cb (jna/to-fn Void wlc/wlc_set_view_created_cb ))
(def set-view-focus-cb (jna/to-fn Void wlc/wlc_set_view_focus_cb ))

(def set-keyboard-key-cb (jna/to-fn Void wlc/wlc_set_keyboard_key_cb))
(def set-pointer-motion-cb (jna/to-fn Void wlc/wlc_set_pointer_motion_cb))

(def WLC_BIT_ACTIVATED (bit-shift-left 1 4))

(defonce all-views (atom {}))

(defmacro define-callback [fname interface args & body]
  `(def ~fname
     (reify
       Callback
       ~interface
       (callback ~args
         ~@body))))

(defmacro make-callback [interface args & body]
  `(reify
     Callback
     ~interface
     (callback ~args
       ~@body)))

(definterface IViewCallback
  (^int callback [^com.sun.jna/Pointer view]))

(defn view-created [view]
  (let [_ (println "new created 2" view)
        output (view-get-output  view)
        mask (output-get-mask  output)]
    (view-set-mask view mask)
    (view-bring-to-front view)
    (view-focus view)
    (Integer. 1)))

(definterface IFocusCallback
  (^void callback [^com.sun.jna/Pointer view ^int focus]))

(define-callback view-focused IFocusCallback [_ view focus]
  (view-set-state view WLC_BIT_ACTIVATED focus))

(definterface ILogCallback
  (^void callback [^int type ^String msg]))

(define-callback log-handler ILogCallback [_ logtype msg]
  (println "log " logtype msg))

(definterface IKeyboardCallback
  (^void callback [^com.sun.jna/Pointer view
                   ^int time
                   ^com.sun.jna/Pointer modifiers
                   ^int keycode         ;may be not a keycode?
                   ^int key_state]))

(define-callback key-handler IKeyboardCallback [_ view time mods code state]
  (println "key " view time mods code state)
  ;; return true to consume the key
  false)

(definterface IPointerMoveCallback
  (^void callback [^com.sun.jna/Pointer handle
                   ^int time
                   ^com.sun.jna/Pointer position]))

(define-callback pointer-move-handler
  IPointerMoveCallback [_ handle time position]
  (let [x (.getInt position 0)
        y (.getInt position 4)]
    (println "move " handle time x y)
    (pointer-set-position position)
    false))

(defn -main []
  (log-set-handler log-handler)
  (set-view-created-cb
   (make-callback IViewCallback [_ view]
                  (view-created view)))
  (set-view-focus-cb view-focused)
  (set-keyboard-key-cb key-handler)
  (set-pointer-motion-cb pointer-move-handler)

  (when (wlc-init)
    (wlc-run)))
