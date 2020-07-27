;;; early-init.el -*- lexical-binding: t; -*-

;; Emacs HEAD (27+) introduces early-init.el, which is run before init.el,
;; before package and UI initialization happens.

(setq comp-deferred-compilation nil
      comp-speed 3
      frame-inhibit-implied-resize t
      gc-cons-threshold most-positive-fixnum
      package-enable-at-startup nil
      straight--wait-for-async-jobs nil)

(advice-add #'package--ensure-init-file :override #'ignore)
(advice-add #'x-apply-session-resources :override #'ignore)

(tool-bar-mode 0)

(when (fboundp 'set-scroll-bar-mode) (set-scroll-bar-mode nil))
