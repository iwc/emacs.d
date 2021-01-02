;;; Fonts

;; (if (eq system-type 'darwin)
;;     (and (cond
;;           ((member "Anonymous Pro" (font-family-list)) (set-face-attribute 'default nil :family "Anonymous Pro" :height 150))
;;           ((member "Monaco" (font-family-list)) (set-face-attribute 'default nil :family "Monaco" :height 130))
;;           ((member "SF Mono" (font-family-list)) (set-face-attribute 'default nil :family "SF Mono" :height 120))
;;           ((member "Source Code Pro" (font-family-list)) (set-face-attribute 'default nil :family "Source Code Pro" :height 130)))
;; 	 (setq mac-allow-anti-aliasing t)))

;; (if (eq system-type 'gnu/linux)
;;     (set-face-attribute 'default nil :family "DejaVu Sans Mono" :height 100))

;; (if (eq system-type 'windows-nt)
;;     (set-face-attribute 'default nil :family "Consolas" :height 100))
(provide 'init-fonts)
