;; add our themes folder path
(add-to-list 'custom-theme-load-path (expand-file-name "iwc/defthemes" user-emacs-directory))

(require-package 'doom-themes)
;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
;;(load-theme 'doom-nord t)
;; (if (display-graphic-p)
;;     (load-theme 'doom-moonlight t)
;;   (load-theme 'doom-nord t))
;;(load-theme 'doom-one t)
;;(load-theme 'doom-snazzy t)
;;(load-theme 'doom-nord-light t)
(load-theme 'doom-palenight)

;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

;; Enable custom neotree theme
;(doom-themes-neotree-config)  ; all-the-icons fonts must be installed!

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)

(provide 'init-defthemes)
