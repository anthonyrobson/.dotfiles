;;; config-dired.el

(setq dired-auto-revert-buffer   t
      dired-clean-up-buffers-too t
      dired-dwim-target          t
      dired-listing-switches     "-lhav"
      dired-recursive-copies     'always
      dired-recursive-deletes    'always)

(if (string= (file-name-nondirectory insert-directory-program) "gls")
    (setq dired-listing-switches
          (concat dired-listing-switches " --group-directories-first")))

(provide 'config-dired)
;;; config-dired.el ends here
