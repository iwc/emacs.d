(add-auto-mode
 'nxml-mode
 (concat "\\."
         (regexp-opt
          '("xml" "xsd" "sch" "rng" "xslt" "svg" "rss"
            "gpx" "tcx"))
         "\\'"))
(setq magic-mode-alist (cons '("<\\?xml " . nxml-mode) magic-mode-alist))
(fset 'xml-mode 'nxml-mode)
(add-hook 'nxml-mode-hook (lambda ()
                            (set (make-local-variable 'ido-use-filename-at-point) nil)))
(setq nxml-slash-auto-complete-flag t)


;; See: http://sinewalker.wordpress.com/2008/06/26/pretty-printing-xml-with-emacs-nxml-mode/
(defun pp-xml-region (begin end)
  "Pretty format XML markup in region. The function inserts
linebreaks to separate tags that have nothing but whitespace
between them.  It then indents the markup by using nxml's
indentation rules."
  (interactive "r")
  (save-excursion
      (nxml-mode)
      (goto-char begin)
      (while (search-forward-regexp "\>[ \\t]*\<" nil t)
        (backward-char) (insert "\n"))
      (indent-region begin end)))

;;----------------------------------------------------------------------------
;; Integration with tidy for html + xml
;;----------------------------------------------------------------------------
(require-package 'tidy)
(add-hook 'nxml-mode-hook (lambda () (tidy-build-menu nxml-mode-map)))
(add-hook 'html-mode-hook (lambda () (tidy-build-menu html-mode-map)))


(add-auto-mode 'html-mode "\\.(jsp|tmpl)\\'")

;; setup support for HTML ERB support for Ruby
(setq 
 nxhtml-global-minor-mode t
      mumamo-chunk-coloring 'submode-colored
      nxhtml-skip-welcome t
      indent-region-mode t
      rng-nxml-auto-validate-flag nil
      nxml-degraded t)
(add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-nxhtml-mumamo))

(provide 'init-nxml)
