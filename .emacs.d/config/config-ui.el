(setq
 ;; default-frame-alist '((height . 1.0)
 ;;                       (horizontal-scroll-bars . nil)
 ;;                       (inhibit-double-buffering . t)
 ;;                       (internal-border-width . 0)
 ;;                       (left . 0)
 ;;                       (left-fringe . 10)
 ;;                       (line-spacing . 0.2)
 ;;                       (right-fringe . 10)
 ;;                       (tool-bar-lines . 0)
 ;;                       (top . 0)
 ;;                       (vertical-scroll-bars . nil)
 ;;                       (width . 120))
 echo-keystrokes 0.02
 fast-but-imprecise-scrolling t
 frame-resize-pixelwise t
 frame-title-format
 '(:eval (if (buffer-file-name)
		         (abbreviate-file-name (buffer-file-name))
		       "%b"))
 goto-address-mail-face 'link
 ibuffer-show-empty-filter-groups nil
 ibuffer-use-other-window t
 initial-frame-alist default-frame-alist
 make-pointer-invisible t
 ring-bell-function #'ignore
 scroll-margin 3
 use-dialog-box nil
 use-file-dialog nil
 window-combination-resize t
 x-stretch-cursor t
 x-underline-at-descent-line t)

(setq-default bidi-display-reordering nil)

;; (use-package avy
;;   :ensure t
;;   :bind (("C-'" . avy-goto-char)
;;          ("C-\"" . avy-goto-line))
;;   :config (setq avy-all-windows t
;;                 avy-background t
;;                 avy-keys '(?a ?s ?d ?e ?f ?g ?r ?v ?h ?j ?k ?l ?n ?m ?u)
;;                 avy-style 'at-full))

;; (use-package ace-link
;;   :ensure t
;;   :defer 1
;;   :config (ace-link-setup-default))

;; (use-package ivy
;;   :ensure t
;;   :ensure smex
;;   :diminish ivy-mode
;;   :bind (:map ivy-minibuffer-map ("<escape>" . minibuffer-keyboard-quit))
;;   :config (setq ivy-count-format ""
;;                 ivy-extra-directories nil
;;                 ivy-height 10
;;                 ivy-re-builders-alist '((swiper . ivy--regex-plus)
;;                                         (t . ivy--regex-fuzzy))
;;                 ivy-use-virtual-buffers t
;;                 ivy-virtual-abbreviate 'abbreviate
;;                 smex-save-file (cache-for "smex"))
;;   (ivy-mode 1))

;; (use-package counsel
;;   :ensure t
;;   :diminish counsel-mode
;;   :bind (("C-c C-c M-x" . execute-extended-command)
;;          ("C-c M-x" . smex)
;;          ("M-x" . counsel-M-x)
;;          ([remap find-file] . counsel-find-file)
;;          ([remap describe-variable] . counsel-describe-variable)
;;          ([remap describe-function] . counsel-describe-function)
;;          ([remap info-lookup-symbol] . counsel-info-lookup-symbol)
;;          ("C-x 8" . counsel-unicode-char)
;;          ("C-c g" . counsel-git)))

;; (use-package swiper
;;   :ensure t
;;   :bind (([remap isearch-forward] . swiper)
;;          ([remap isearch-backward] . swiper-all))
;;   :config (setq swiper-action-recenter t
;;                 swiper-include-line-number-in-search nil
;;                 swiper-stay-on-quit nil))

(provide 'config-ui)
