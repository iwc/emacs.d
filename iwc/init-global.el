;;; Global settings


;; Don't show the startup screen
(setq inhibit-startup-message t)


;; Highlight regions and add special behaviors to regions.
;; "C-h d transient" for more info
(setq transient-mark-mode t)

;; Display line and column numbers
(setq line-number-mode    t)
(setq column-number-mode  t)

;; scroll bar on the right plz
(set-scroll-bar-mode 'right)

;; Make sure all backup files only live in one place
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; Gotta see matching parens
(show-paren-mode t)

;; Trash can support
(setq delete-by-moving-to-trash t)

;; link the selection and clipboard together
(setq select-enable-clipboard t)

;; zap-up-to-char, forward-to-word, backward-to-word, etc
(require 'misc)

;; electric pair mode
;(electric-pair-mode)

;; use auto-revert
(global-auto-revert-mode 1)

;; linum mode
;(global-linum-mode)
;(setq linum-format "%d ")

;; make scrolling less jumpy
(setq scroll-conservatively 10000)

;; some key map changes
(define-key global-map [home] 'beginning-of-line)
(define-key global-map [end] 'end-of-line)
(define-key global-map [C-home] 'beginning-of-buffer)
(define-key global-map [C-end] 'end-of-buffer)

;; emacsclient server mode
(server-start t)

(provide 'init-global)
