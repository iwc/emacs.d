(require-package 'swift-mode)
(setq auto-mode-alist
      (append '(("\\.swift\\'" . swift-mode))
              auto-mode-alist))
(provide 'init-swift-mode)
