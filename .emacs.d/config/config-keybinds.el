(global-set-key (kbd "RET") #'newline-and-indent)
(global-set-key [home] #'beginning-of-line)
(global-set-key [end] #'end-of-line)

(global-set-key (kbd "C-+") #'text-scale-increase)
(global-set-key (kbd "C--") #'text-scale-decrease)
(global-set-key (kbd "C-x k") #'kill-this-buffer)
(global-set-key (kbd "C-x C-b") #'ibuffer)

(global-set-key (kbd "M-/") #'hippie-expand)

;;; personal map

(global-set-key (kbd "C-c n") #'create-new-buffer)

(provide 'config-keybinds)
