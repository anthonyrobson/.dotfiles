(use-package flyspell
  :ensure nil
  :defer t
  :config (setq flyspell-issue-message-flag nil
                flyspell-issue-welcome-flag nil))

(use-package ispell
  :ensure nil
  :defer t
  :config (setq ispell-choices-win-default-height 5
                ispell-dictionary "en_GB"
                ispell-extra-args '("--sug-mode=ultra")))

(provide 'config-spelling)
