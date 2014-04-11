;;; init.el

(add-to-list 'load-path (expand-file-name "iwc" user-emacs-directory))

;; set some constants for use later
(defconst *is-osx* (eq system-type 'darwin))
(defconst *is-linux* (eq system-type 'gnu/linux))


;; ;; basic setup
(require 'init-iwc)
(require 'init-elpa)
(require 'init-global)
(require 'init-defuns)

(require 'init-fonts)
(require 'init-defthemes)
(require 'init-ido)
(require 'init-diff)
(require 'init-tabs)
(require 'init-utf-8)
(when *is-osx* 
  (require 'init-mac))
(require 'init-org)
(require 'init-css)
(require 'init-htaccess)
(require 'init-tramp)

(require 'init-autopair)
(when *is-osx*
   (require 'init-pbcopy))
(require 'init-malabar-mode)
(require 'init-yasnippet)
(require 'init-ruby-mode)
(require 'init-yaml-mode)
(require 'init-cmake-mode)
(require 'init-php-mode)
(require 'init-less-css-mode)
(require 'init-web-mode)
(require 'init-markdown-mode)
(require 'init-js2-mode)
(require 'init-handlebars-mode)
(require 'init-groovy-mode)
(require 'init-magit)
(require 'init-flycheck)
(require 'init-helm)
(require 'init-helm-ls-git)
(require 'init-expand-region)
(require 'init-autocomplete)
;(require 'init-company-mode)
(require 'init-powerline)

;; move customization settings to their own file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file) 
   (load custom-file))

(message "emacs-user-directory is %s" user-emacs-directory) 
