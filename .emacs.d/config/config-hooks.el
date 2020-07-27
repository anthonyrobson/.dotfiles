(add-hooks 'window-setup-hook
  (setq file-name-handler-alist default-handler
        gc-cons-percentage 0.1
			  gc-cons-threshold my-gc-cons-threshold)
  (set-face-attribute 'default nil :font ar/fixed-font)
  (set-face-attribute 'variable-pitch nil :font ar/variable-font)
  (set-face-attribute 'mode-line nil :box nil)
  (set-face-attribute 'mode-line-inactive nil :box nil)
  (column-number-mode)
  (delete-selection-mode)
  (electric-indent-mode)
  (electric-pair-mode)
  (global-auto-revert-mode)
  (save-place-mode)
  (savehist-mode))

(add-hooks 'minibuffer-setup-hook (setq gc-cons-threshold most-positive-fixnum))
(add-hooks 'minibuffer-exit-hook (setq gc-cons-threshold my-gc-cons-threshold))

(add-hooks 'find-file-hook
  (unless recentf-mode (recentf-mode) (recentf-track-opened-file)))

(add-hooks 'after-save-hook
  (check-parens)
  (executable-make-buffer-file-executable-if-script-p))

(add-hooks 'text-mode-hook
  (auto-fill-mode)
  (goto-address-mode))

(add-hooks 'prog-mode-hook
  (set-face-attribute 'line-number nil :height (* 10 (- ar/font-size 3)))
  (setq display-line-numbers t)
  (goto-address-prog-mode))

(provide 'config-hooks)
