;; helm
(require-package 'helm)

(require 'helm-config)

(setq helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match t)

(setq helm-grep-ag-command "ag --line-numbers -S --hidden --color --color-match '31;43' --nogroup %s %s %s")
(setq helm-grep-ag-pipe-cmd-switches '("--color-match '31;43'"))

(provide 'init-helm)
