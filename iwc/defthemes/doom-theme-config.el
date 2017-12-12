(require 'doom-themes)

;;; Settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t  ; if nil, italics is universally disabled

      ;; doom-one specific settings
      doom-one-brighter-modeline nil
      doom-one-brighter-comments nil)

;; Load the theme 
(if (not window-system)
    (load-theme 'doom-one t)
  (load-theme 'doom-one t))

;;; OPTIONAL
;; brighter source buffers (that represent files)
(add-hook 'find-file-hook #'doom-buffer-mode-maybe)
;; ...if you use auto-revert-mode
(add-hook 'after-revert-hook #'doom-buffer-mode-maybe)
;; And you can brighten other buffers (unconditionally) with:
(add-hook 'ediff-prepare-buffer-hook #'doom-buffer-mode)

;; brighter minibuffer when active
(add-hook 'minibuffer-setup-hook #'doom-brighten-minibuffer)

;; Enable custom neotree theme
;;;(doom-themes-neotree-config)  ; all-the-icons fonts must be installed!

;; Enable nlinum line highlighting
(doom-themes-nlinum-config)   ; requires nlinum and hl-line-mode

(provide 'doom-theme-config)
