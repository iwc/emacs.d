;; helm
(require-package 'helm)

(require 'helm-config)

(setq helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match t)

(provide 'init-helm)
