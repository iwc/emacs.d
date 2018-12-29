;;; Gotta do UTF-8

(require 'un-define "un-define" t)
;;(set-buffer-file-coding-system 'utf-8 'utf-8-unix)
;;(set-default buffer-file-coding-system 'utf-8-unix)
;;(set-default-coding-systems 'utf-8-unix)
;;(prefer-coding-system 'utf-8-unix)
;;(set-default default-buffer-file-coding-system 'utf-8-unix)

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
;; backwards compatibility as default-buffer-file-coding-system
;; is deprecated in 23.2.
(if (boundp 'buffer-file-coding-system)
    (setq-default buffer-file-coding-system 'utf-8)
  (setq default-buffer-file-coding-system 'utf-8))

;; Treat clipboard input as UTF-8 string first; compound text next, etc.
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))
(provide 'init-utf-8)
