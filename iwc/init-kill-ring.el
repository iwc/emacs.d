;; Kill ring and related items
(setq kill-ring-max 1000)

;;; sdfalkjasdl;fjasd;lfkjsd;fljs;dlfkjads
;;;; sadfasdfasdfasdfsd

;;; Modify kill region to kill lines when no region is active
(defadvice kill-region (before slick-cut activate compile)
  "When called interactively with no active region, kill a single line instead."
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))

(provide 'init-kill-ring)

