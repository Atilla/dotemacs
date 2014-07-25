;;; Looks --- Customixing emacs appearance
;;; Commentary:
;;; Code:

;; Load favoutire theme
(load-theme 'dakrone t)

;; I Like having scroll bar on the right for some reason
(scroll-bar-mode 1)
(set-scroll-bar-mode 'right)

;; Nuke all toolbars and shit and inhibit splashscreen stuff
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq inhibit-splash-screen t
      initial-scratch-message nil)

;; Display line numbers and column numbers
(require 'linum)
(global-linum-mode t)

(setq line-number-mode t
      column-number-mode t)

;; Parens managing
(show-paren-mode t)

(provide 'looks)
;;; looks.el ends here


