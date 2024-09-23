;; Org mode support
(require-package 'org-modern)

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-switchb)

(setq org-directory "~/Documents/org")
(setq org-agenda-files (list "inbox.org"))
(setq org-capture-templates
       `(("i" "Inbox" entry  (file "inbox.org")
        ,(concat "* TODO %?\n"
                 "/Entered on/ %U"))))

(add-hook 'org-mode-hook #'org-modern-mode)
(setq org-modern-timestamp nil)


(provide 'init-org)
