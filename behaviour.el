;;; Behaviour --- Customixing emacs behaviour
;;; Commentary:
;;; Code:

;; Backup and temp files are Uber-annoying
(setq make-backup-files nil)
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

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

;; Use ido with flx
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

;; OMG, please don't make me *type* 'yes' and 'no'
(defalias 'yes-or-no-p 'y-or-n-p)

;; Hippie-expand ALL the things!
(setq hippie-expand-try-functions-list
         '(try-expand-dabbrev
           try-expand-all-abbrevs
           try-complete-file-name-partially
           try-complete-file-name
           try-expand-list
           try-expand-line
           try-expand-dabbrev-all-buffers
           try-expand-dabbrev-from-kill
           ))

(provide 'behaviour)
;;; behaviour.el ends here


