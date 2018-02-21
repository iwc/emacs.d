;; DWIM Comment mode
(require-package 'comment-dwim-2)

(setq comment-dwim-2--inline-comment-behavior 'reindent-comment)

;; Bind key 
(global-set-key (kbd "s-/") 'comment-dwim-2) 

(provide 'init-comment-dwim-2)
