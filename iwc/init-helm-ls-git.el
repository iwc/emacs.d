(require-package 'helm-ls-git)
(require 'helm)
(define-key helm-command-map (kbd "g") 'helm-ls-git-ls)

(provide 'init-helm-ls-git)
