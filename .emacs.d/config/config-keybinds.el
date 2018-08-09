;;; config-keybinds.el

(global-set-key (kbd "C-c n") #'create-new-buffer)
(global-set-key (kbd "RET") #'newline-and-indent)
(global-set-key (kbd "C-x C-b") #'ibuffer)
(global-set-key (kbd "C-x k") #'kill-this-buffer)
(global-set-key (kbd "M-/") #'hippie-expand)
(global-set-key (kbd "C-s-f") #'toggle-frame-fullscreen)
(global-set-key (kbd "C-+") #'text-scale-increase)
(global-set-key (kbd "C--") #'text-scale-decrease)
;; TODO (global-set-key (kbd "C-x C-r") #'recentf-open-files)
(global-set-key (kbd "<C-return>") #'rectangle-mark-mode)
(global-set-key (kbd "C-s") #'isearch-forward-regexp)
(global-set-key (kbd "C-r") #'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") #'isearch-forward)
(global-set-key (kbd "C-M-r") #'isearch-backward)

(define-key isearch-mode-map [remap isearch-delete-char] #'isearch-del-char)

(provide 'config-keybinds)
;;; config-keybinds.el ends here
