;; add our themes folder path
(add-to-list 'custom-theme-load-path (expand-file-name "iwc/defthemes" user-emacs-directory))
;;"~/.emacs.d/iwc/defthemes")

;; load the theme
;(load-theme 'mustang-iwc t)
(if (not window-system)
(load-theme 'subatomic256 t)    
(load-theme 'atom-one-dark t))

(provide 'init-defthemes)
