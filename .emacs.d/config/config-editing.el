(setq default-input-method "greek-ibycus4"
      hippie-expand-try-functions-list
      '(try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-all-abbrevs
        try-expand-list
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol)
      shift-select-mode nil)

(setq-default c-basic-offset 2
              fill-column 80
              indent-tabs-mode nil
              sentence-end-double-space nil
              standard-indent 2
	            tab-width 2)

;; https://github.com/Wilfred/deadgrep
(use-package deadgrep
  :bind ("C-c S" . deadgrep))

;; (use-package browse-kill-ring
;;   :ensure t
;;   :defer t
;;   :bind (("M-y" . browse-kill-ring))
;;   :config (setq browse-kill-ring-highlight-current-entry t))

;; (use-package typo
;;   :ensure t
;;   :diminish typo-mode
;;   :commands typo-mode
;;   :hook (text-mode . typo-mode)
;;   :config (setq-default typo-language "English"))

(provide 'config-editing)
