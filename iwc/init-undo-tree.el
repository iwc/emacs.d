;; undo tree

(require-package 'undo-tree)
(global-undo-tree-mode)

;; Move undo history files here so they don't litter the filesystem
(setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo")))
(provide 'init-undo-tree)
