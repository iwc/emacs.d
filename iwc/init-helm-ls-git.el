(require-package 'helm-ls-git)
(require 'helm)
(define-key helm-command-map (kbd "g") 'helm-ls-git)

(provide 'init-helm-ls-git)
