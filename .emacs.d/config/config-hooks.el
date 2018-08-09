;;; config-hooks.el

(add-hooks 'window-setup-hook
  ;; (auto-image-file-mode)
  (column-number-mode)
  (delete-selection-mode)
  ;; (electric-quote-mode)
  (electric-pair-mode)
  (global-auto-revert-mode)
  ;; TODO (recentf-mode)
  (save-place-mode)
  (savehist-mode)
  ;; TODO (winner-mode)
  (set-face-attribute 'default nil
                      :family ar/fixed-font
                      :height (* ar/font-height 10)
                      :weight ar/fixed-font-weight)
  (set-face-attribute 'variable-pitch nil
                      :family ar/variable-font
                      :height (+ (* ar/font-height 10) 10)
                      :weight ar/variable-font-weight))

(add-hooks 'before-save-hook
  (delete-trailing-whitespace))

(add-hooks 'after-save-hook
  (executable-make-buffer-file-executable-if-script-p))

(add-hooks 'text-mode-hook
  (auto-fill-mode)
  ;; (flyspell-mode)
  (goto-address-mode)
  ;; (setq-default truncate-lines nil)
  (visual-line-mode))

(add-hooks 'prog-mode-hook
  ;; (flyspell-prog-mode)
  (subword-mode)
  (goto-address-prog-mode)
  (setq-default display-line-numbers t
                ;; truncate-lines t
                )
  (visual-line-mode -1))

(add-hooks 'minibuffer-setup-hook
  (setq-local input-method-function nil)
  (setq-local gc-cons-threshold most-positive-fixnum))

(add-hooks 'focus-out-hook
  (garbage-collect))

(provide 'config-hooks)
;;; config-hooks.el ends here
