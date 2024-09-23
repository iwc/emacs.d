;;; display-buffer-alist tweaks

;;; Compilation buffers
(add-to-list 'display-buffer-alist
  '("\\*Compilation\\*"
    display-buffer-reuse-window))

;;; info buffers
(add-to-list 'display-buffer-alist
 '("\\*info\\*"
   (display-buffer-in-side-window)
   (side . right)
   (slot . 0)
   (window-width . 80)
   (window-parameters
    (no-delete-other-windows . t))))

;;; Help buffers
(add-to-list 'display-buffer-alist
 '("\\*Help\\*"
   (display-buffer-reuse-window display-buffer-pop-up-window)
   (inhibit-same-window . t)))

;;; xref and occur buffers
(add-to-list 'display-buffer-alist
          `(,(rx (| "*xref*"
                    "*grep*"
                    "*Occur*"))
            (display-buffer-reuse-window)
            (window-height 0.10)
            (inhibit-same-window . nil)))

(provide 'init-display-buffer-alist)
