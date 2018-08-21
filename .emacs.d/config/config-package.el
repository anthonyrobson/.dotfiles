(require 'package)

(setq package--init-file-ensured t
      package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/"))
      package-archive-priorities '(("org" . 10)
                                   ("melpa" . 9)
                                   ("gnu" . 5))
      package-user-dir (cache-for "elpa/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

(use-package diminish :ensure t)

(provide 'config-package)
