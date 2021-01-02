;; Catch all file for various settings for global setups

(setq default-directory "~")

;; Appearance settings
(setq blink-cursor-mode nil)
(column-number-mode t)
(show-paren-mode t)
(tool-bar-mode -1)
(global-hl-line-mode t)
(toggle-scroll-bar -1)
(pixel-scroll-mode t)
;(if (not (version< emacs-version "26"))
;    (add-hook 'prog-mode-hook #'display-line-numbers-mode))

;(setq-default line-spacing 0.3)
;; Vertical window divider
(setq window-divider-default-right-width 24)
(setq window-divider-default-places 'right-only)
(window-divider-mode 1)

(provide 'init-iwc)
