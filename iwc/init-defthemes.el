;; add our themes folder path
(add-to-list 'custom-theme-load-path (expand-file-name "iwc/defthemes" user-emacs-directory))
;;"~/.emacs.d/iwc/defthemes")

;; load the theme
(load-theme 'mustang t)

(provide 'init-defthemes)
