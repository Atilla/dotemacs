;;; package --- Atilla's emacs settings
;;; Commentary:

;;; Code:
(setq temporary-file-directory "/tmp/")
(setq gc-cons-threshold 20000000)

;; Load all packages. This needs to happen first, as they're used
;; in the code below.
(load "~/.emacs.d/packages.el")

(load "~/.emacs.d/looks.el")
(load "~/.emacs.d/editing.el")
(load "~/.emacs.d/behaviour.el")
(load "~/.emacs.d/keybindings.el")

;; Set tramp default to ssh
(require 'tramp)
(setq tramp-default-method "ssh")

;; Enable flycheck globally
(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'init)
;;; init.el ends here
