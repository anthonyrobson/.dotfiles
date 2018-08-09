;;; config-functions.el

(defadvice load-theme (before clear-previous-themes activate)
  "Clear existing theme settings instead of layering them."
  (mapc #'disable-theme custom-enabled-themes))

(defmacro add-hooks (hook &rest body)
  "A wrapper for `add-hook' to allow multiple bodies."
  (declare (indent 1) (debug t))
  `(add-hook ,hook (lambda () ,@body)))

(defun move-beginning-of-line-or-indentation (orig-fn &rest args)
  "Toggle the cursor between start of line or of indent."
  (let ((orig-pt (point)))
    (back-to-indentation)
    (when (= orig-pt (point))
      (apply orig-fn args))))

(advice-add 'move-beginning-of-line :around #'move-beginning-of-line-or-indentation)
(advice-add 'beginning-of-visual-line :around #'move-beginning-of-line-or-indentation)

(defun find-file-maybe-make-directories (filename &optional _wildcards)
  "Make parent directories for a saved file if they do not exist."
  (unless (file-exists-p filename)
    (let ((dir (file-name-directory filename)))
      (unless (file-exists-p dir)
        (make-directory dir :make-parents)))))

(advice-add 'find-file :before #'find-file-maybe-make-directories)

(provide 'config-functions)
;;; config-functions.el ends here
