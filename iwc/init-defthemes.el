;; add our themes folder path
(add-to-list 'custom-theme-load-path (expand-file-name "iwc/defthemes" user-emacs-directory))

;; load the theme
;; add the defthemes dir to the load path so that we can load doom-themes.el
(add-to-list 'load-path (expand-file-name "iwc/defthemes" user-emacs-directory))

(require 'doom-theme-config)

;;(require-package 'solarized-theme)
;;(require 'solarized-theme-config)
;;(load-theme 'solarized-dark t)

;;(require-package 'flatui-theme)
;;(load-theme 'flatui t)
(provide 'init-defthemes)
