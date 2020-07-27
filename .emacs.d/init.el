;;; init.el -*- lexical-binding: t; -*-

(defvar default-handler file-name-handler-alist)

(setq file-name-handler-alist nil
      inhibit-default-init t
      inhibit-startup-message t
      initial-scratch-message nil
      load-prefer-newer t
      load-source-file-function nil)

(tooltip-mode -1)
(fset 'display-startup-echo-area-message #'ignore)

(add-to-list 'load-path (expand-file-name "config/" user-emacs-directory))
(add-to-list 'exec-path "/usr/local/bin")

(require 'config-defs)
(require 'config-custom)
(require 'config-package)

(if is-a-mac (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH"))))

(setq ad-redefinition-action 'accept
      apropos-do-all t
      auto-revert-verbose nil
      auto-save-default nil
      auto-save-list-file-prefix nil
      case-fold-search t
      completion-ignore-case t
      confirm-kill-processes nil
      create-lockfiles nil
      default-directory "~/"
      delete-by-moving-to-trash t
      disabled-command-function nil
      enable-local-variables :safe
      enable-recursive-minibuffers t
      global-auto-revert-non-file-buffers t
      history-delete-duplicates t
      idle-update-delay 2
      inhibit-compacting-font-caches t
      initial-major-mode 'fundamental-mode
      isearch-allow-scroll t
      kill-buffer-query-functions nil
      kill-do-not-save-duplicates t
      locale-coding-system 'utf-8
      make-backup-files nil
      read-buffer-completion-ignore-case t
      read-file-name-completion-ignore-case t
      recentf-exclude '((expand-file-name package-user-dir))
      recentf-filename-handlers '(abbreviate-file-name)
      recentf-save-file (cache-for "recentf")
      save-interprogram-paste-before-kill t
      save-place-file (cache-for "places")
      savehist-additional-variables '(kill-ring
                                      search-ring
                                      comint-input-ring
                                      extended-command-history
                                      regexp-search-ring)
      savehist-autosave-interval 180
      savehist-file (cache-for "history")
      savehist-save-minibuffer-history t
      search-default-mode #'char-fold-to-regexp
      temporary-file-directory "/tmp/"
      user-full-name ar/user-full-name
      user-mail-address ar/user-mail-address
      vc-follow-symlinks t
      vc-handled-backends '(Git))

(defalias 'yes-or-no-p #'y-or-n-p)

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-selection-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)

(if is-a-mac (require 'config-macos))
(require 'config-ui)
(require 'config-editing)
;; (require 'config-org)
(require 'config-shell)
;; (require 'config-dired)
;; (require 'config-spelling)
(require 'config-hooks)
(require 'config-keybinds)

;; (require 'config-all-prog-modes)
;; (require 'config-shell-script)
