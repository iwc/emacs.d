;; lsp-mode -- language server protocol
(require-package 'lsp-mode)
(require-package 'lsp-ui)
;(require-package 'company-lsp)
(require-package 'helm-lsp)

(define-key helm-command-map (kbd ".") 'helm-lsp-workspace-symbol)

(require-package 'lsp-sourcekit)
(eval-after-load 'lsp-mode
  (progn
    (require 'lsp-sourcekit)
    (setq lsp-sourcekit-executable (string-trim (shell-command-to-string "xcrun --find sourcekit-lsp")))
    (setq lsp-enable-xref t)
    ))

(provide 'init-lsp)
