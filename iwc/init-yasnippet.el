;;; Snippets make typing fun
(require-package 'yasnippet)

;; (require-package 'dropdown-list)

(yas-global-mode 1)

(yas/load-directory "~/.emacs.d/snippets")

;; (setq yas/prompt-functions '(yas/ido-prompt
;;                              yas/dropdown-prompt
;;                              yas/completing-prompt))

;; Replace yasnippets's TAB
;; (add-hook 'yas/minor-mode-hook
;;           (lambda () (define-key yas/minor-mode-map
;;                        (kbd "TAB") 'smart-tab))) ; was yas/expand


(provide 'init-yasnippet)
