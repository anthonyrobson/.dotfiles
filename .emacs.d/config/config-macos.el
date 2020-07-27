(setq auto-revert-use-notify nil
      find-program "gfind"
      insert-directory-program "gls"
      ispell-program-name "aspell"
      locate-command "mdfind"
      mac-command-modifier 'control
      mac-option-modifier 'meta
      mouse-wheel-progressive-speed nil
      mouse-wheel-scroll-amount '(1)
      ns-pop-up-frames nil
      system-name (car (split-string system-name "\\."))
      trash-directory "~/.Trash/"
      xargs-program "gxargs")

(provide 'config-macos)
