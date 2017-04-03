(ns paxton.core
  (:require [net.n01se.clojure-jna :as jna])
  (:import (com.sun.jna Pointer Callback))
  (:gen-class))

(def pt->pixel #(* % 3)) ; "works on my machine"

(def wlc-init (jna/to-fn Integer wlc/wlc_init))

(def wlc-run (jna/to-fn Void wlc/wlc_run))
(def wlc-init (jna/to-fn Boolean wlc/wlc_init))

(def log-set-handler (jna/to-fn Void wlc/wlc_log_set_handler))

(def view-set-mask (jna/to-fn Void wlc/wlc_view_set_mask))
(def view-get-output (jna/to-fn Pointer wlc/wlc_view_get_output))

(def set-view-render-pre-cb (jna/to-fn Pointer wlc/wlc_set_view_render_pre_cb))
(def set-view-render-post-cb (jna/to-fn Pointer wlc/wlc_set_view_render_post_cb))

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


(defn write-pixels [[x y w h] data]
  ;; it appears that the only supported pixel format is RGBA8888.  See
  ;; https://github.com/Cloudef/wlc/blob/1910a6ddffe53b8886c48566dce0ad6fd7f60f76/include/wlc/wlc-render.h#L13
  (let [fmt 0
        geom (int-array 4 [x y w h])]
    (jna/invoke Void wlc/wlc_pixels_write fmt geom data)))

(defn get-view-parent [view-handle]
  (jna/invoke Pointer wlc/wlc_view_get_parent view-handle))

(defn geometry->array [geom]
  (when geom
    (map #(.getInt geom (* 4 %)) [0 1 2 3])))

(defn get-view-geometry [view-handle]
  (let [g (jna/invoke Pointer wlc/wlc_view_get_geometry view-handle)]
    (geometry->array g)))

(defn geoms [view]
  (let [p (get-view-parent view)
        g (get-view-geometry view)]
    (if p
      (conj (geoms p) g)
      [g])))

(defonce all-views (atom {}))

(defmacro make-callback [interface args & body]
  `(reify
     Callback
     ~interface
     (callback ~args
       ~@body)))

(definterface IViewCallback
  (^boolean callback [^com.sun.jna/Pointer view]))

(defn border-rectangles [[x y w h] title]
  (let [stroke (pt->pixel 2)]
    {:top {:geometry [x y w (pt->pixel 14)] :rgba 0xff0000ff}
     :bottom {:geometry [x (+ y h) w stroke] :rgba 0xff0000ff}
     :left {:geometry [x y stroke h] :rgba 0xff00ff00}
     :right  {:geometry [(+ x w) y stroke h] :rgba 0xff00ff00}}))

(defn view-created [view]
  (println "new created 2" view (geoms view))
  (let [output (view-get-output  view)
        geom (get-view-geometry view)
        mask (output-get-mask  output)]
    (view-set-mask view mask)
    (view-bring-to-front view)
    (view-focus view)
    (swap! all-views assoc view {:geometry geom
                                 :borders (border-rectangles geom "foo")})
    true))

(list @all-views)

(definterface IViewAndPointerCallback
  (^void callback [^com.sun.jna/Pointer view
                   ^com.sun.jna/Pointer ptr]))

(definterface IFocusCallback
  (^void callback [^com.sun.jna/Pointer view ^int focus]))

(defn view-focused [view focus]
  (view-set-state view WLC_BIT_ACTIVATED focus))

(defn view-request-geometry [view geom]
  (let [[x y w h] geom]
    (println "geom req " x y w h)
    (swap! all-views assoc view
           {:geometry geom
            :borders (border-rectangles geom "foo")})
    (jna/invoke Void wlc/wlc_view_set_geometry view 0 (int-array 4 geom))))

(definterface ILogCallback
  (^void callback [^int type ^String msg]))

(defn log-message [logtype msg]
  (println "log " logtype msg))

(definterface IKeyboardCallback
  (^boolean callback [^com.sun.jna/Pointer view
                      ^int time
                      ^com.sun.jna/Pointer modifiers
                      ^int keycode         ;may be not a keycode?
                      ^int key_state]))

(defn key-handler [view time mods code state]
  (println "key " view time mods code state)
  ;; return true to consume the key
  false)

(definterface IPointerMoveCallback
  (^boolean callback [^com.sun.jna/Pointer handle
                      ^int time
                      ^com.sun.jna/Pointer position]))

(defn pointer-move-handler [handle time position]
  (let [x (.getInt position 0)
        y (.getInt position 4)]
    (println "move " handle time x y)
    (pointer-set-position position)
    false))

(defn view-pre-render [view]
  (println "pre render")
  true)

(defn view-post-render [view]
  (println "post render" (geoms view))
  (let [shell (get @all-views view)]
    (run! (fn [b]
            (let [g (:geometry b)
                  [x y w h] g]
              (write-pixels g (int-array (* w h) (:rgba b)))))
          (vals (:borders shell))))
  true)

(defn install-callbacks []
  (log-set-handler
   (make-callback ILogCallback [_ logtype msg]
                  (log-message logtype msg)))
  (set-view-created-cb
   (make-callback IViewCallback [_ view]
                  (view-created view)))

  (set-view-render-pre-cb
   (make-callback IViewCallback [_ view]
                  (view-pre-render view)))
  (set-view-render-post-cb
   (make-callback IViewCallback [_ view]
                  (view-post-render view)))

  (set-view-focus-cb
   (make-callback IFocusCallback [_ view focus]
                  (view-focused view focus)))
  (set-keyboard-key-cb
   (make-callback IKeyboardCallback [_ view time mods code state]
                  (key-handler view time mods code state)))

  (set-pointer-motion-cb
   (make-callback IPointerMoveCallback [_ handle time position]
                  (pointer-move-handler handle time position)))

  (jna/invoke
   Void wlc/wlc_set_view_request_geometry_cb
   (make-callback IViewAndPointerCallback [_ view-handle geom]
                  (view-request-geometry view-handle (geometry->array geom)))))


(install-callbacks)

(defn -main []
  (install-callbacks)
  (when (wlc-init)
    (wlc-run)))
