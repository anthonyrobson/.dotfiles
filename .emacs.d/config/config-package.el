;;; config-package.el

;; (require 'package)

(setq package--init-file-ensured t
      package-archive-priorities '(("melpa" . 10)
                                   ("org"   . 2)
                                   ("gnu"   . 1))
      package-archives           '(("gnu"   . "https://elpa.gnu.org/packages/")
                                  ("melpa"  . "https://melpa.org/packages/")
                                  ("org"    . "http://orgmode.org/elpa/"))
      package-enable-at-startup  nil
      package-pinned-packages    '(("org"              . "org")
                                   ("org-plus-contrib" . "org"))
      package-user-dir           (expand-file-name "elpa/" cache-directory))

;; (package-initialize)

(eval-when-compile
  (require 'package)
  (package-initialize)
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))
  (require 'use-package)
  (setq use-package-always-ensure t))

(use-package delight)
(delight '((eldoc-mode nil "eldoc")
           (subword-mode nil "subword")))

(provide 'config-package)
;;; config-package.el ends here
