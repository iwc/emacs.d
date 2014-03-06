;; Personal functions (many copied from rmm5t and others)

;; For loading libraries from the vendor directory
;; Modified from defunkt's original version to support autoloading.
;; http://github.com/defunkt/emacs/blob/master/defunkt/defuns.el
(defun vendor (library &rest autoload-functions)
  (let* ((file (symbol-name library))
         (normal (concat "~/.emacs.d/vendor/" file))
         (suffix (concat normal ".el"))
         (personal (concat "~/.emacs.d/iwc/" file))
         (found nil))
    (cond
     ((file-directory-p normal) (add-to-list 'load-path normal) (set 'found t))
     ((file-directory-p suffix) (add-to-list 'load-path suffix) (set 'found t))
     ((file-exists-p suffix)  (set 'found t)))
    (when found
      (if autoload-functions
          (dolist (autoload-function autoload-functions)
            (autoload autoload-function (symbol-name library) nil t))
        (require library)))
    (when (file-exists-p (concat personal ".el"))
      (load personal))))


;; Make the whole buffer pretty and consistent
(defun iwb()
  "Indent Whole Buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))


;; Quick toggle to a small font
(defun iwc-small-font ()
  "Toggle a small font (Mac only)"
  (interactive)
  (when (eq system-type 'darwin)
    (set-face-attribute 'default nil :font "ProggyTiny-11")
    (setq mac-allow-anti-aliasing nil)))

;; Quick toggle to a regular font
(defun iwc-regular-font ()
  "Toggle a regular sized font (Mac only)"
  (interactive)
  (when (eq system-type 'darwin)
    (set-face-attribute 'default nil :font "Source_Code_Pro-12")
    (setq mac-allow-anti-aliasing t)))


;; clean up json blobs
(defun beautify-json ()
  (interactive)
  (let ((b (if mark-active (min (point) (mark)) (point-min)))
        (e (if mark-active (max (point) (mark)) (point-max))))
    (shell-command-on-region b e
                             "python -mjson.tool" (current-buffer) t)))

(provide 'init-defuns)
