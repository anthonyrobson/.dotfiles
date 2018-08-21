(setenv "TERM" "xterm-256color")

(setq comint-scroll-to-bottom-on-input t
      comint-scroll-to-bottom-on-output nil 
      comint-input-ignoredups t
      comint-completion-addsuffix t
      comint-output-filter-functions '(ansi-color-process-output
                                       comint-truncate-buffer
                                       comint-watch-for-password-prompt)
      comint-prompt-read-only t
      comint-scroll-show-maximum-output nil
      comint-scroll-to-bottom-on-input t
      comint-terminfo-terminal "xterm-256color"
      compilation-ask-about-save nil 
      compilation-always-kill t
      compilation-scroll-output 'first-error
      compilation-auto-jump-to-first-error t
      compilation-skip-threshold 2
      compilation-disable-input t
      compilation-context-lines 3)

(provide 'config-shell)
