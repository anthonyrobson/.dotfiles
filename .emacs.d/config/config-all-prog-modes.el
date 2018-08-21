(use-package eldoc
  :ensure nil
  :defer t
  :diminish eldoc-mode
  :hook (prog-mode . eldoc-mode)
  :config (setq eldoc-echo-area-use-multiline-p t
                eldoc-idle-delay 0.5))

(provide 'config-all-prog-modes)
