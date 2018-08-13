;;; module-vcs.el

(use-package diff-hl
  :straight diff-hl
  :defer 2
  :init
  (global-diff-hl-mode)
  (add-hook 'dired-mode-hook 'diff-hl-dired-mode))

(provide 'module-vcs)
;;; module-vcs.el ends here
