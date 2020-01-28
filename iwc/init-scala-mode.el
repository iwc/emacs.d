;; scala-mode

(require-package 'scala-mode)
(require-package 'sbt-mode)

(add-hook 'scala-mode-hook `lsp)

(provide 'init-scala-mode)
