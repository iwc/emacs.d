;; From: http://community.schemewiki.org/cgi-bin/scheme.cgi?Emacs
(setq default-frame-alist
      (append (list
	       '(font . "Roboto Mono:style=Light:size=14")
	       ;; '(font . "Roboto Mono Emacs Regular:size=14")
	       '(min-height . 1)  '(height     . 45)
	       '(min-width  . 1) '(width      . 81)
               '(vertical-scroll-bars . nil)
               '(internal-border-width . 24)
               '(left-fringe    . 0)
               '(right-fringe   . 0)
               '(tool-bar-lines . 0)
               '(menu-bar-lines . 0))))

(provide 'init-layout)
