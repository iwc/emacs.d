;; lsp-mode -- language server protocol
(require-package 'lsp-mode)
(require-package 'lsp-ui)
(require-package 'company-lsp)
(require-package 'helm-lsp)

(define-key helm-command-map (kbd ".") 'helm-lsp-workspace-symbol)

(provide 'init-lsp)
