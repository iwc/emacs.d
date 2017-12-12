(require-package 'clang-format)

;; Bind region formatting to C-M-Tab
(global-set-key [C-M-tab] 'clang-format-region)

(provide 'init-clang-format)
