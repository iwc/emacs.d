;; ruby mode
(require-package 'ruby-mode)
(require-package 'inf-ruby)

(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files")
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))

;; Fastlane files
(add-to-list 'auto-mode-alist '("Fastfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Appfile$" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))
(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook
	  '(lambda ()
	     (inf-ruby-keys)))

(provide 'init-ruby-mode)
