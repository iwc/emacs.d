;; Catch all file for various settings for global setups

(setq default-directory "~")

;; Appearance settings
(setq blink-cursor-mode nil)
(column-number-mode t)
(show-paren-mode t)
(tool-bar-mode -1)
(global-hl-line-mode t)

(if (not (version< emacs-version "26"))
    (add-hook 'prog-mode-hook #'display-line-numbers-mode))

(setq-default line-spacing 0.3)

(provide 'init-iwc)
