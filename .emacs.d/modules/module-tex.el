;;; module-tex.el

(use-package tex
  :defer t
  :ensure auctex
  :init
  (add-to-list 'exec-path "/Library/TeX/texbin/")
  (setenv "PATH" (concat "/Library/TeX/texbin:" (getenv "PATH")))
  :config
  (setq-default TeX-master nil)
  (setq TeX-auto-save t
	TeX-parse-self t))

(provide 'module-tex)
;;; module-tex.el
