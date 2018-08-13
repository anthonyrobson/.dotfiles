;;; module-ivy.el

(use-package ivy
  :straight t
  :delight ivy-mode
  :config
  (setq ivy-use-virtual-buffers t)
  (ivy-mode t))

(use-package counsel
  :straight t
  :bind (("M-x" . counsel-M-x)
         ("M-y" . counsel-yank-pop)
         :map ivy-minibuffer-map
         ("M-y" . ivy-next-line)))

(use-package swiper
  :straight t
  :bind* (("C-s"     . swiper)
          ("C-S-s"   . swiper-all)
          ;; ("C-c C-r" . ivy-resume)
          ("C-x C-f" . counsel-find-file)
          ("C-c h f" . counsel-describe-function)
          ("C-c h v" . counsel-describe-variable)
          ("C-c i u" . counsel-unicode-char)
          ;; ("M-i"     . counsel-imenu)
          ;; ("C-c g"   . counsel-git)
          ;; ("C-c j"   . counsel-git-grep)
          ;; ("C-c l"   . counsel-locate)
          ))

(provide 'module-ivy)
;;; module-ivy.el ends here
