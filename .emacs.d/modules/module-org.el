;;; module-org.el

(use-package org
  :straight org-plus-contrib
  :bind (("C-c a" . org-agenda)
         ("C-c c" . org-capture)
         ("C-c l" . org-store-link))
  :config
  (setq
   org-directory ar/org-directory
   org-ellipsis "⤵"
   org-src-fontify-natively t
   org-src-tab-acts-natively t
   org-src-window-setup 'current-window))

(use-package deft
  :commands deft
  :bind ("M-<f1>" . deft)
  :config
  (setq deft-extension "org"
        deft-directory (concat ar/org-directory "/deft")
        deft-text-mode 'org-mode
        deft-use-filename-as-title t
        deft-auto-save-interval 30.0))

(provide 'module-org)
;;; module-org.el ends here
