;; helm
(require-package 'helm)

(require 'helm)

(setq helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match t)

(setq helm-display-function 'helm-display-buffer-in-own-frame
        helm-use-undecorated-frame-option t)

;;; Use helm-find-files for C-x C-f
(define-key global-map [remap find-file] 'helm-find-files)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

;;; Auto resize the helm buffer window
(helm-autoresize-mode 1)
;;; Only use up to a quarter of the frame
;(seq helm-autoresize-max-height 25)

(global-set-key (kbd "M-x") 'helm-M-x)
(setq helm-M-x-fuzzy-match t)

(global-set-key (kbd "C-c h o") 'helm-occur)

(provide 'init-helm)
