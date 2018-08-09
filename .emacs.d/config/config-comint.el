;;; config-comint.el

(setenv "SHELL" ar/shell)
;; (setenv "PAGER" "cat") ;; TODO set this to Bash's/Zsh's pager?
(setenv "TERM" "xterm-256color")

(setq comint-prompt-read-only          t
      comint-scroll-to-bottom-on-input t
      comint-terminfo-terminal         "xterm-256color"
      compilation-always-kill          t
      compilation-ask-about-save       nil
      compilation-disable-input        t
      compilation-scroll-output        'first-error
      compilation-skip-threshold       2
      compilation-window-height        15
      completion-ignore-case           t
      eshell-cmpl-ignore-case          t
      eshell-directory-name (expand-file-name "eshell/" cache-directory)
      eshell-error-if-no-glob          t
      eshell-glob-case-insensitive     t
      eshell-hist-ignoredups           t
      eshell-scroll-to-bottom-on-input 'this
      shell-file-name                  ar/shell)

(setq-default comint-input-ignoredups t
              comint-process-echoes t
              comint-scroll-show-maximum-output nil)

(provide 'config-comint)
;;; config-comint.el ends here
