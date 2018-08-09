;;; config-base.el

(add-to-list 'load-path (expand-file-name "config/" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "modules/" user-emacs-directory))
(add-to-list 'exec-path "/usr/local/bin/")
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))

(defconst cache-directory (expand-file-name "cache/" user-emacs-directory))
(defconst is-a-mac (eq system-type 'darwin))
(defconst is-a-graphical-mac (and is-a-mac (display-graphic-p)))

(require 'config-functions)
(require 'config-custom)

(setq ad-redefinition-action 'accept
      apropos-do-all t
      auto-save-default nil
      auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
      auto-save-list-file-prefix nil
      backup-directory-alist `((".*" . ,temporary-file-directory))
      case-fold-search t
      confirm-kill-processes nil
      create-lockfiles nil
      delete-by-moving-to-trash t
      disabled-command-function nil
      enable-recursive-minibuffers t
      enable-local-variables :safe
      history-delete-duplicates t
      history-length 1000
      inhibit-default-init t
      initial-major-mode 'fundamental-mode
      isearch-allow-scroll t
      kill-buffer-query-functions nil
      kill-do-not-save-duplicates t
      kill-ring-max 100
      make-backup-files nil
      message-log-max 1000
      read-buffer-completion-ignore-case t
      save-interprogram-paste-before-kill t
      search-default-mode #'char-fold-to-regexp
      select-enable-clipboard t
      select-enable-primary t
      temporary-file-directory "/tmp/"
      trash-directory "~/.Trash/"
      user-full-name ar/user-full-name
      user-mail-address ar/user-mail-address
      vc-follow-symlinks t
      vc-handled-backends '(Git))

(setq-default imenu-auto-rescan t)

(defalias 'yes-or-no-p #'y-or-n-p)

(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

(if (executable-find "gls") (setq insert-directory-program "gls"))
(if (executable-find "gfind") (setq find-program "gfind"))
(if (executable-find "gxargs") (setq xargs-program "gxargs"))
(if (executable-find "mdfind") (setq locate-command "mdfind"))

(require 'config-ui)
(require 'config-editing)
(require 'config-package)
(require 'config-comint)
(require 'config-dired)
(require 'config-keybinds)
(require 'config-hooks)

(provide 'config-base)
;;; config-base.el ends here
