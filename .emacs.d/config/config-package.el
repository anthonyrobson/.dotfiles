;;; config-package.el

(defvar bootstrap-version)
(let ((bootstrap-file (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file :noerror :nomessage))

(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

(use-package delight
  :straight (delight :type git :host github :repo "emacsmirror/delight"))

(delight '((eldoc-mode nil "eldoc")
           (subword-mode nil "subword")))

(provide 'config-package)
;;; config-package.el ends here
