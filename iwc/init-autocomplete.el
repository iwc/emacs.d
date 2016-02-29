;; autocomplete
(require-package 'auto-complete)

(require 'auto-complete-config)
(ac-config-default)

;; c and c++ modes
(defun iwc-c-modes-ac-sources ()
  (setq ac-sources '(ac-source-yasnippet ac-source-gtags ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers ac-source-semantic)))

(add-hook 'c++-mode-hook 'iwc-c-modes-ac-sources)
(add-hook 'c-mode-hook 'iwc-c-modes-ac-sources)

;; JSX autocomplete
(add-to-list 'ac-modes 'js2-jsx-mode)

(provide 'init-autocomplete)
