(use-package org
  :ensure org-plus-contrib
  :defer t
  :bind (("C-c a" . org-agenda)
         ("C-c c" . org-capture)
         ("C-c l" . org-store-link))
  :config (setq org-confirm-babel-evaluate nil
                org-directory "~/Library/Mobile Documents/com~apple~CloudDocs/Org"
                org-export-coding-system 'utf-8
                org-fontify-quote-and-verse-blocks t
                org-fontify-whole-heading-line t
                org-src-fontify-natively t
                org-src-tab-acts-natively t
                org-src-window-setup 'current-window
                org-startup-folded t
                org-tags-column 80))

(require 'org)

(provide 'config-org)
