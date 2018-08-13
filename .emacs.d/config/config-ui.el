;;; config-ui.el

(defvar ar/my-frame-params '((height                 . 40)
                             (horizontal-scroll-bars . nil)
                             (internal-border-width  . 0)
                             (left-fringe            . 10)
                             (line-spacing            . 5)
                             ;; (ns-appearance          . dark)
                             (ns-transparent-titlebar . t)
                             (right-fringe           . 10)
                             (vertical-scroll-bars   . nil)
                             (width                  . 125)))

(setq default-frame-alist           ar/my-frame-params
      echo-keystrokes               0.02
      frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b")))
      frame-resize-pixelwise        t
      global-hl-line-sticky-flag    t
      initial-frame-alist           ar/my-frame-params
      make-pointer-invisible        t
      mouse-wheel-progressive-speed nil
      mouse-wheel-scroll-amount     '(1 ((shift) . 1) ((control) . nil))
      ns-pop-up-frames              nil
      ring-bell-function            #'ignore
      use-dialog-box                nil
      use-file-dialog               nil
      window-combination-resize     t)

;; (setq-default cursor-in-non-selected-windows nil)

(provide 'config-ui)
;;; config-ui.el ends here
