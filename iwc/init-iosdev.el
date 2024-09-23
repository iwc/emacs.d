;; iOS development support

;; (use-package eglot
;;   :hook (swift-mode . eglot-ensure)
;;   :commands (eglot eglot-ensure)
;;   :ensure nil
;;   :config
;;   (setq eglot-stay-out-of '(corfu company)
;;         eglot-extend-to-xref t
;;         eglot-ignored-server-capabilities '(:hoverProvider))
;;   (add-to-list 'eglot-server-programs '(swift-mode . my-swift-mode:eglot-server-contact)))

;; (require-package 'tree-sitter)

;; (use-package tree-sitter
;;   :hook (swift-mode . tree-sitter-mode)
;;   :config
;;   (setq tsc-dyn-get-from nil)
;;   (setq tree-sitter-hl-use-font-lock-keywords t
;;         tree-sitter-hl-enable-query-region-extension nil)
;;   :config
;;   (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))


(use-package swift-mode
  :defer t
  :mode "\\.swift\\'"
  :config
  (setq swift-mode:basic-offset 4
        swift-mode:parenthesized-expression-offset 4
        swift-mode:multiline-statement-offset 4
        swift-mode:highlight-anchor t)

  )

;; (use-package localizeable-mode
;;   :mode "\\.strings\\'"
;;   :bind (:map localizeable-mode-map
;;               ("C-c C-c" . #'swift-additions:compile-and-run-app)
;;               ("C-c C-r" . #'swift-additions:run-app)
;;               ("C-c C-k" . #'periphery-run-loco))
;;   :ensure nil)

(use-package ios-simulator
  :ensure nil
  :after swift-mode
  :bind
  ("M-s" . #'ios-simulator:terminate-current-app)
  ("C-c x c" . #'ios-simulator:appcontainer)
  ("C-c x l" . #'ios-simulator:change-language))

(use-package overlay-usage
  ;; :hook (swift-mode . overlay-usage-mode)
  :ensure nil)

(use-package swift-additions
  :ensure nil
  :after swift-mode
  :bind
  ("C-c t m" .  #'swift-additions:test-module-silent)
  ("C-c t p" .  #'swift-additions:test-swift-package-from-file)
  ("C-c C-c" . #'swift-additions:compile-and-run-app)
  ("C-c C-x" . #'swift-additions:reset-settings)
  ("M-K" .  #'swift-additions:clean-build-folder)
  ("M-P" .  #'swift-additions:print-thing-at-point)
  ("M-t" . #'swift-additions:insert-todo)
  ("M-m" . #'swift-additions:insert-mark)
  ("M-B" . #'swift-additions:run-without-compiling)
  ("M-b" . #'swift-additions:compile-app)
  ("M-r" . #'swift-additions:compile-and-run-app))

(use-package swift-refactor
  :ensure nil
  :after swift-mode
  :bind
  ("C-c r a" . #'swift-refactor:insert-around)
  ("C-c r d" . #'swift-refactor:delete-current-line-with-matching-brace)
  ("C-c r i" . #'swift-refactor:tidy-up-constructor)
  ("C-c r s" . #'swift-refactor:split-function-list)
  ("C-c r r" . #'swift-refactor:extract-function)
  ("C-c r t" . #'swift-refactor:add-try-catch))

(use-package apple-docs-query
  :ensure nil
  :after swift-mode
  :bind
  ("C-c C-a" . #'apple-docs/query)
  ("C-c C-A" . #'apple-docs/query-thing-at-point))

(use-package hacking-with-swift
  :ensure nil
  :after swift-mode
  :bind
  ("C-c C-h" . #'hacking-ws/query)
  ("C-c C-H" . #'hacking-ws/query-thing-at-point))

(use-package periphery-quick
  :ensure nil
  :after prog-mode
  :bind
  ("M-f" . #'periphery-quick:find-ask)
  ("M-F" . #'periphery-quick:find)
  ("C-c f f" . #'periphery-quick:find-in-file)
  ("C-c f t" . #'periphery-quick:todos))

(use-package periphery-search
  :ensure nil
  :after prog-mode
  :bind
  ("C-c C-f" . #'periphery-search-dwiw-rg)
  ("C-x C-t" . #'periphery-query-todos-and-fixmes)
  ("C-x C-m" . #'periphery-query-marks))

(use-package periphery-swiftformat
  :ensure nil
  :after swift-mode
  :bind
  ("C-c C-o" . #'periphery-swiftformat-lint-buffer)
  ("M-o" . #'periphery-swiftformat-autocorrect-buffer)
  ("C-c C-p" . #'periphery-run-swiftformat-for-project))

(use-package periphery-loco
  :ensure nil
  :after swift-mode
  :bind
  ("C-c C-k" . #'periphery-run-loco))

(use-package periphery-swiftlint
  :ensure nil
  :after swift-mode
  :bind
  ("C-c C-l" . #'periphery-run-swiftlint))

(provide 'init-iosdev)
