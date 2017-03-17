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

(def output-get-mask (jna/to-fn Pointer wlc/wlc_output_get_mask ))

(def set-view-created-cb (jna/to-fn Void wlc/wlc_set_view_created_cb ))
(def set-view-focus-cb (jna/to-fn Void wlc/wlc_set_view_focus_cb ))


(def WLC_BIT_ACTIVATED (bit-shift-left 1 4))

(definterface IViewCallback
  (^int callback [^com.sun.jna/Pointer view]))

(def view-created
  (reify
    Callback
    IViewCallback
    (callback [this view]
      (let [_ (println "hey" view)
            output (view-get-output  view)
            mask (output-get-mask  output)]
        (println "view created ")
        (view-set-mask view mask)
        (view-bring-to-front view)
        (view-focus view))
      (Integer. 1))))

(definterface IFocusCallback
  (^void callback [^com.sun.jna/Pointer view ^int focus]))

(def view-focused
  (reify
    Callback
    IFocusCallback
    (callback [_ view focus]
      (view-set-state view WLC_BIT_ACTIVATED focus))))

(definterface ILogCallback
  (^void callback [^int type ^String msg]))
(def log-handler
  (reify
    Callback
    ILogCallback
    (callback [_ logtype msg]
      (println "log " logtype msg))))


(defn -main []
  (log-set-handler log-handler)
  (set-view-created-cb view-created)
  (set-view-focus-cb view-focused)

  (when (wlc-init)
    (wlc-run)))
