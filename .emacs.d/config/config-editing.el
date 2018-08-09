;;; config-editing.el

(setq auto-revert-use-notify nil
      comment-auto-fill-only-comments  t
      electric-quote-context-sensitive t
      global-auto-revert-non-file-buffers t
      hippie-expand-try-functions-list '(try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-all-abbrevs
                                         try-expand-list
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol)
      hippie-expand-verbose            nil
      require-final-newline            t
      save-place-file                  (expand-file-name "places" cache-directory)
      savehist-additional-variables    '(search-ring regexp-search-ring)
      savehist-file                    (expand-file-name "history" cache-directory)
      shift-select-mode                nil
      standard-indent                  ar/indent
      tab-always-indent                'complete)

(setq-default default-input-method      "greek-ibycus4"
	      fill-column               ar/fill-column
              indent-tabs-mode          nil
              sentence-end-double-space nil
              tab-width                 ar/indent)

(provide 'config-editing)
;;; config-editing.el ends here
