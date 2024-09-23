;;; Diff

;; When quitting an ediff session, get rid of the buffers
(setq ediff-keep-variants nil)

;; Show files side by side 
(setq ediff-split-window-function `split-window-horizontally)

;; Don't spawn the ediff control buffer in a new frame
(setq ediff-window-setup-function `ediff-setup-windows-plain)

(provide 'init-diff)
