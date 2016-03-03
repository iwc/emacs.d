;; js2-mode
(require-package 'js2-mode)

;; javascript mode customization
(setq js-indent-level 4)

;; Use js2-mode for javascript
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; JSX Support
(add-to-list 'auto-mode-alist '("\\.jsx$" . js2-jsx-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-jsx-mode))

;; Eslint flycheck settings --> npm install -g eslint babel-eslint eslint-plugin-react
;; disable jshint since we prefer eslint checking
(require 'flycheck)

(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(javascript-jshint)))

;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'js2-jsx-mode)

;; customize flycheck temp file prefix
(setq-default flycheck-temp-prefix ".flycheck")

;; disable json-jsonlist checking for json files
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(json-jsonlist)))

;; js2 has it's own indention
(setq js2-basic-offset 4)

;; js2-imenu-extras
(eval-after-load 'js2-mode
  '(progn
     (require 'js2-imenu-extras)
     (js2-imenu-extras-setup)))

(provide 'init-js2-mode)
