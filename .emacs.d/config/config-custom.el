;;; config-custom.el

(defgroup ar nil
  "My Emacs configuration."
  :prefix "ar/"
  :group 'local)

(defcustom ar/fill-column 80
  "User's preferred fill/wrap column."
  :type 'int
  :group 'ar)

(defcustom ar/fixed-font "Ubuntu Mono"
  "User's preferred monospaced font."
  :type 'string
  :group 'ar)

(defcustom ar/fixed-font-weight 'regular
  "User's preferred monospaced font weight."
  :type 'symbol
  :group 'ar)

(defcustom ar/font-height 15
  "User's preferred font height."
  :type 'int
  :group 'ar)

(defcustom ar/indent 2
  "User's preferred indent amount."
  :type 'int
  :group 'ar)

(defcustom ar/line-spacing 0.2
  "User's preferred line spacing."
  :type 'float
  :group 'ar)

(defcustom ar/org-directory "~/Library/Mobile Documents/com~apple~CloudDocs/Org"
  "User's orgmode directory."
  :type 'string
  :group 'ar)

(defcustom ar/shell "/usr/local/bin/bash"
  "User's preferred shell."
  :type 'string
  :group 'ar)

(defcustom ar/user-full-name "Anthony Robson"
  "User's full name."
  :type 'string
  :group 'ar)

(defcustom ar/user-mail-address "anthrobson@gmail.com"
  "User's email address."
  :type 'string
  :group 'ar)

(defcustom ar/variable-font "Helvetica Neue"
  "User's preferred proportional font."
  :type 'string
  :group 'ar)

(defcustom ar/variable-font-weight 'regular
  "User's preferred proportional font weight."
  :type 'string
  :group 'ar)

(setq custom-buffer-done-kill t
      custom-buffer-verbose-help nil
      custom-file (expand-file-name "custom.el" cache-directory)
      custom-unlispify-menu-entries nil
      custom-unlispify-tag-names nil)

(if (file-exists-p custom-file)
  (load custom-file :no-error :no-message))

(provide 'config-custom)
;;; config-custom.el ends here
