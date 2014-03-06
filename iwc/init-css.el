;; css mode
(require-package 'css-mode)

(autoload 'css-mode "css-mode")
(setq auto-mode-alist       
      (cons '("\\.css\\'" . css-mode) auto-mode-alist))

(provide 'init-css)
