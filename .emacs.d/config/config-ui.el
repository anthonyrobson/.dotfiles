;;; config-ui.el

(setq
 echo-keystrokes 0.02
 frame-title-format
 '((:eval (if (buffer-file-name)
              (abbreviate-file-name (buffer-file-name))
            "%b")))
 make-pointer-invisible t
 mouse-wheel-progressive-speed nil
 mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil))
 ns-pop-up-frames nil
 ring-bell-function #'ignore
 use-dialog-box nil
 )

(setq-default cursor-in-non-selected-windows nil)

(provide 'config-ui)
;;; config-ui.el ends here
