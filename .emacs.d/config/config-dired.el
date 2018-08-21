(use-package dired
  :ensure nil
  :defer t
  :config (setq dired-auto-revert-buffer t
                dired-dwim-target t
                dired-recursive-copies 'always
                dired-recursive-deletes 'top)

  (if (string= insert-directory-program "gls")
      (setq dired-listing-switches "-lhva --group-directories-first")
    (setq dired-listing-switches "-lhva")))

(provide 'config-dired)
