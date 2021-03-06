;; Enhancements for Objective C formatting
(require 'objc-mode)

;; mm files don't map properly out of the box
(add-to-list 'auto-mode-alist '("\\.mm\\'" . objc-mode))

;; Configure XCode compilation integration
(defun xcode-compile ()
  (interactive)
  (let ((df (directory-files "."))
        (has-proj-file nil)
        )
    (while (and df (not has-proj-file))
      (let ((fn (car df)))
        (if (> (length fn) 10)
            (if (string-equal (substring fn -10) ".xcodeproj")
                (setq has-proj-file t)
              )
          )
        )
      (setq df (cdr df))
      )
    (if has-proj-file
        (compile "xcodebuild -configuration Debug")
      (compile "make")
      )
    )
  )

(defun objc-choose-header-mode ()
  (interactive)
  (if (string-equal (substring (buffer-file-name) -2) ".h")
      (progn
        ;; OK, we got a .h file, if a .m file exists we'll assume it's
        ; an objective c file. Otherwise, we'll look for a .cpp file.
        (let ((dot-m-file (concat (substring (buffer-file-name) 0 -1) "m"))
              (dot-mm-file (concat (substring (buffer-file-name) 0 -1) "mm"))
              (dot-cpp-file (concat (substring (buffer-file-name) 0 -1) "cpp")))
          (if (file-exists-p dot-m-file)
              (progn
                (objc-mode)
                )
            (if (file-exists-p dot-mm-file)
                (progn
                  (objc-mode))
              (if (file-exists-p dot-cpp-file)
                  (c++-mode)
                )
              )
            )
          )
        )
    )
  )
 
(add-hook 'find-file-hook 'objc-choose-header-mode)
