;;; Fonts

;; From: http://community.schemewiki.org/cgi-bin/scheme.cgi?Emacs

(if (eq system-type 'darwin)
    (set-face-attribute 'default nil :family "Source Code Pro" :height 115)
  (setq mac-allow-anti-aliasing t)
  (and window-system
       (set-face-font 'default "-misc-fixed-medium-*-normal-*-*-130-*-*-*-*-*-*")))

(if (eq system-type 'gnu/linux)
    (set-face-attribute 'default nil :family "DejaVu Sans Mono" :height 100)
    )
(provide 'init-fonts)
