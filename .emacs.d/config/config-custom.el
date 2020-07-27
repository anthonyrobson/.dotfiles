(defvar ar/user-full-name "Anthony Robson")
(defvar ar/user-mail-address "anthrobson@gmail.com")

(defvar ar/font-size 12)
(defvar ar/fixed-font (font-spec :family "Fira Code" :size ar/font-size))
(defvar ar/variable-font (font-spec :family "Helvetica" :size ar/font-size))

(setq custom-buffer-done-kill nil
      custom-buffer-verbose-help nil
      custom-file (cache-for "custom.el")
      custom-safe-themes t
      custom-theme-directory (concat user-emacs-directory "themes/")
      custom-unlispify-menu-entries nil
      custom-unlispify-tag-names nil)

(if (file-exists-p custom-file)
    (load custom-file :noerror :nomessage))

(provide 'config-custom)
