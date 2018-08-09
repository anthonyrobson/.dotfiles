;;; module-vcs.el

(use-package git-gutter
  :straight git-gutter-fringe
  :defer 2
  :delight git-gutter-mode
  :config
  (require 'git-gutter-fringe)
  (setq git-gutter:handled-backends '(git))
  (global-git-gutter-mode t))

(provide 'module-vcs)
;;; module-vcs.el ends here
