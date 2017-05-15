; Rust mode
(require-package 'rust-mode)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(require-package 'cargo)
(add-hook 'rust-mode-hook 'cargo-minor-mode)

(provide 'init-rust-mode)
