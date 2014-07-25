;;; Packages --- Manage installed packages
;;; Commentary:
;;; Code:

;; Enable package repositories
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
;;(add-to-list 'package-archives
;;	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)


(defvar atilla-required-packages
  (list 'dakrone-theme 'flycheck 'flx 'flx-ido)
  "Libraries that should be installed by default.")

(unless package-archive-contents
  (package-refresh-contents))

(dolist (package atilla-required-packages)
  (unless (package-installed-p package)
    (package-install package)))

(provide 'packages)
;;; packages.el ends here


