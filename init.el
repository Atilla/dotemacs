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
(add-hook 'after-init-hook #'projectile-global-mode)

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
