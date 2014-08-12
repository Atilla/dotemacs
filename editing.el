;;; Editing --- Customizing editing parameters
;;; Commentary:
;;; Code:

;; Make marks and clipboard work in a sane way
(delete-selection-mode t)
(transient-mark-mode t)
(setq x-select-enable-clipboard t)

;; Ignore duplicates in the kill ring
(setq kill-do-not-save-duplicates t)

;; Only indent with 4 spaces
(setq tab-width 4
      indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)

(provide 'editing)
;;; editing.el ends here


