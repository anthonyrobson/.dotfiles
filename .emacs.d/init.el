;;; init.el -*- lexical-binding: t; -*-

(defvar default-handler file-name-handler-alist)

(setq file-name-handler-alist nil
      gc-cons-percentage 0.6
	    gc-cons-threshold most-positive-fixnum
      inhibit-default-init t
	    inhibit-startup-message t
	    initial-scratch-message nil
      load-prefer-newer t
      load-source-file-function nil
	    package-enable-at-startup nil)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(fset 'display-startup-echo-area-message #'ignore)

(require 'config-base (expand-file-name "config/config-base" user-emacs-directory))
