;;; Looks --- Customizing emacs appearance
;;; Commentary:
;;; Code:

;; Load favoutire theme
(load-theme 'naquadah t)

;; Make sure we get black background
(add-to-list 'default-frame-alist
             '(background-color . "black"))
(add-to-list 'initial-frame-alist
             '(background-color . "black"))

;; Inconsolata rules forever
(add-to-list 'default-frame-alist
             '(font . "Inconsolata-12"))
(add-to-list 'initial-frame-alist
             '(font . "Inconsolata-12"))


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


