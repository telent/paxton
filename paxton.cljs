(do
  (.log js/console "hey")
(.log js/console "hey")


(.log js/console js/wlc)

(def WLC_BIT_ACTIVATED (bit-shift-left 1 4))


(defn view-created [view]
  (let [w js/wlc
        output (.wlc_view_get_output w view)
        mask (.wlc_output_get_mask w output)]
    (.log js/console "view created ")
    (doto w
      (.wlc_view_set_mask view, mask)
      (.wlc_view_bring_to_front view)
      (.wlc_view_focus view))
    1))


(defn view-focused [view focus]
  (.wlc_view_set_state js/wlc view WLC_BIT_ACTIVATED focus))


(defn ->cb [return params fn]
  (.Callback js/ffi (name return) (clj->js (map name params)) fn))


(defn start-it []
  (.wlc_set_view_created_cb js/wlc
                        (->cb :int [:pointer] view-created))
  (.wlc_set_view_focus_cb js/wlc
                      (->cb :void [:pointer :int] view-focused))
  (if (.wlc_init js/wlc)
    (.wlc_run js/wlc)
    (.log js/console "init returned null")))

(.log js/console "hey 2")
(start-it)

)
