(use-package sh-script
  :ensure nil 
  :mode (("\\.*bashrc$"      . sh-mode)
         ("\\.*bash_profile" . sh-mode))
  :config (setq-default sh-indentation  2
                        sh-basic-offset 2)) 

(provide 'config-shell-script)
