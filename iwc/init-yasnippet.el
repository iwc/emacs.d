;;; Snippets make typing fun
(require-package 'yasnippet)

;; (require-package 'dropdown-list)

(yas-global-mode 1)

(let ((snippets-path (expand-file-name "snippets" user-emacs-directory)))
     (unless (file-exists-p snippets-path)
       (make-directory snippets-path)))
         
(yas/load-directory "~/.emacs.d/snippets")

;; (setq yas/prompt-functions '(yas/ido-prompt
;;                              yas/dropdown-prompt
;;                              yas/completing-prompt))

;; Replace yasnippets's TAB
;; (add-hook 'yas/minor-mode-hook
;;           (lambda () (define-key yas/minor-mode-map
;;                        (kbd "TAB") 'smart-tab))) ; was yas/expand


(provide 'init-yasnippet)
