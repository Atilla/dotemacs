;;; Behaviour --- Customixing emacs behaviour
;;; Commentary:
;;; Code:

;; Backup and temp files are Uber-annoying
(setq make-backup-files nil)
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

;; OMG, please don't make me *type* 'yes' and 'no'
(defalias 'yes-or-no-p 'y-or-n-p)

;; Auto-reload changed buffers
(global-auto-revert-mode t)


;; Remove questions about closing buffers:
(setq kill-buffer-query-functions
 (remove 'process-kill-buffer-query-function
         kill-buffer-query-functions))

;; Cleanup stale buffers
(require 'midnight)
(midnight-delay-set 'midnight-delay "4:30am")
(setq clean-buffer-list-delay-general 1) ;; After 1 day only


(provide 'behaviour)
;;; behaviour.el ends here


