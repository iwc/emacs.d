(require-package 'swift-mode)
(require-package 'lsp-sourcekit)

(eval-after-load 'lsp-mode
  (progn
    (require 'lsp-sourcekit)
    (setq lsp-sourcekit-executable (string-trim (shell-command-to-string "xcrun --find sourcekit-lsp")))))

(setq auto-mode-alist
      (append '(("\\.swift\\'" . swift-mode)
                ("\\.swiftinterface\\'" . swift-mode))
              auto-mode-alist))

(add-hook 'swift-mode-hook (lambda () (lsp)))

(provide 'init-swift-mode)
