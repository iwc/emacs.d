;; scala-mode

(require-package 'scala-mode)
(require-package 'sbt-mode)

(add-hook 'scala-mode-hook `lsp)
(setq scala-indent:step 4)
(provide 'init-scala-mode)
