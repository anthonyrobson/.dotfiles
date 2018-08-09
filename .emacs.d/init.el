;;; init.el -*- lexical-binding: t; -*-


(let ((default-handler file-name-handler-alist))
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (tooltip-mode -1)
  (fset 'display-startup-echo-area-message #'ignore)
  (setq gc-cons-threshold most-positive-fixnum
	inhibit-startup-message t
	initial-scratch-message nil)
  (require 'config-base (expand-file-name "config/config-base" user-emacs-directory))
  (add-hook 'window-setup-hook
	    (lambda () (setq file-name-handler-alist default-handler
			     gc-cons-threshold (* 50 1024 1024)))))

(set-face-attribute 'default nil
		    :family "Ubuntu Mono"
		    :height 180)

;;; init.el ends here
