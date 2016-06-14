;;; Packages --- Manage installed packages
;;; Commentary:
;;; Code:

;; Enable package repositories
(require 'package)

;; Wipe the default list of packeges, so we can control eveyrthing
(setq package-archives '())
(add-to-list 'package-archives
	     '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.milkbox.net/packages/") t)
;;(add-to-list 'package-archives
;;	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)


(defvar atilla-required-packages
  (list 'naquadah-theme 'flycheck 'flx 'flx-ido 'projectile 'dockerfile-mode)
  "Libraries that should be installed by default.")

(unless package-archive-contents
  (package-refresh-contents))

(dolist (package atilla-required-packages)
  (unless (package-installed-p package)
    (package-install package)))

(provide 'packages)
;;; packages.el ends here
