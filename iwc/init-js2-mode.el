;; js2-mode
(require-package 'js2-mode)

;; javascript mode customization
(setq js-indent-level 4)

;; Use js2-mode for javascript
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; js2 has it's own indention
(setq js2-basic-offset 4)

;; js2-imenu-extras
(eval-after-load 'js2-mode
  '(progn
     (require 'js2-imenu-extras)
     (js2-imenu-extras-setup)))

(provide 'init-js2-mode)
