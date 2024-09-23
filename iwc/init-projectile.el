;; Projectile
(require-package 'projectile)

;; Also helm-projectile
(require-package 'helm-projectile)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

;; For some reason, helm-projectile stopped binding this prefix command
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(provide 'init-projectile)
