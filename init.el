;;; init.el


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(package-initialize)

(add-to-list 'load-path (expand-file-name "iwc" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "iwc/iosdev" user-emacs-directory))

;; set some constants for use later
(defconst *is-osx* (eq system-type 'darwin))
(defconst *is-linux* (eq system-type 'gnu/linux))
;; move customization settings to their own file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
   (load custom-file))


;; ;; basic setup
(require 'init-iwc)
(require 'init-elpa)
(require 'init-global)
(require 'init-defuns)
(require 'init-kill-ring)
(require 'init-display-buffer-alist)
(require 'init-exec-path-from-shell)  ;; fixes OSX env var annoyances with PATH

(require 'init-fonts)
(require 'init-defthemes)
;;(require 'init-ido)
(require 'init-diff)
(require 'init-tabs)
(require 'init-utf-8)
(when *is-osx*
  (require 'init-mac))
(require 'init-org)
(require 'init-css)
(require 'init-htaccess)
(require 'init-tramp)

;;(require 'init-autopair)
(when *is-osx*
   (require 'init-pbcopy))
;(require 'init-malabar-mode)
(require 'init-helm)
(require 'init-helm-ls-git)
(require 'init-lsp)
(require 'init-yasnippet)
(require 'init-ruby-mode)
(require 'init-yaml-mode)
(require 'init-cmake-mode)
(require 'init-php-mode)
(require 'init-scala-mode)
(require 'init-less-css-mode)
(require 'init-flycheck)
(require 'init-web-mode)
(require 'init-markdown-mode)
(require 'init-js2-mode)
(require 'init-typescript-mode)
(require 'init-toml-mode)
(require 'init-rust-mode)
(require 'init-erlang-mode)
(require 'init-handlebars-mode)
(require 'init-groovy-mode)
(require 'init-swift-mode)
;;(require 'init-iosdev)
(require 'init-go-mode)
(require 'init-tuareg-mode)
(require 'init-magit)
(require 'init-expand-region)
;;(require 'init-autocomplete)
(require 'init-company-mode)
;;(require 'init-powerline)

;;(require 'init-spaceline)
(require 'init-doom-modeline)
(require 'init-undo-tree)
(require 'init-projectile)
(require 'init-clang-format)
(require 'init-comment-dwim-2)
(require 'init-treemacs)


(message "emacs-user-directory is %s" user-emacs-directory)
(put 'set-goal-column 'disabled nil)
(put 'upcase-region 'disabled nil)


(provide 'init)
;; init.el ends here
