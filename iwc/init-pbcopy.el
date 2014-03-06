;; pbcopy support
(require-package 'pbcopy)

(if (eq system-type 'darwin)
    (progn (require 'pbcopy)
           (turn-on-pbcopy)))

(provide 'init-pbcopy)
