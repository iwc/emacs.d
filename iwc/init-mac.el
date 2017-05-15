;; Hide the tool bar
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode 0))

;; Slow down the mouse wheel acceleration
(when (boundp 'mouse-wheel-scroll-amount)
  (setq mouse-wheel-scroll-amount '(0.01)))

;; Fix some whack looking colors
;(setq ns-use-srgb-colorspace nil)

(provide 'init-mac)
