;;; Keybindings --- All the keybindings
;;; Commentary:
;;; Code:
(global-set-key [BackSpace] 'backward-delete-char-untabify)
(global-set-key [delete] 'delete-char)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key [(control return)] 'hippie-expand)

(provide 'keybindings)
;;; keybindings.el ends here


