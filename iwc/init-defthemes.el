;; add our themes folder path
(add-to-list 'custom-theme-load-path (expand-file-name "iwc/defthemes" user-emacs-directory))
;;"~/.emacs.d/iwc/defthemes")

;; load the theme
;; add the defthemes dir to the load path so that we can load doom-themes.el
(add-to-list 'load-path (expand-file-name "iwc/defthemes" user-emacs-directory))
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


(provide 'init-defthemes)
