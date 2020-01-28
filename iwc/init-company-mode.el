;; company mode -- autocompletion
(require-package 'company)
(autoload 'company-mode "company" nil t)

;; turn it on everywhere
(global-company-mode)

(provide 'init-company-mode)
