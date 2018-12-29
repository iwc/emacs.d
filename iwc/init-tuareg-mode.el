(require-package 'tuareg)
;;(setq auto-mode-alist
;;      (append '(("\\.ml\\" . tuareg-mode))
;;              auto-mode-alist))
(setq auto-mode-alist
      (append '(("\\.ml\\'" . cmake-mode))
              auto-mode-alist))


(provide 'init-tuareg-mode)
