;;etags configuration
(setq tags-file-name "~/sim973/src/TAGS")
;;minebuffer show line configuration
(setq column-number-mode t)
(setq line-number-mode t)

;;fullscreen configuration by f11
(global-set-key [f11] 'my-fullscreen)
(defun my-fullscreen()
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32 '(2 "_NET_WM_STATE_FULLSCREEN" 0))
  )

;;Emacs Irc, chatting,but I don't use...
(require 'erc)
(global-set-key [f9] 'erc)


(defun indent-whole()
  "Indent the whole buffer."
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))
(global-set-key [f7] 'indent-whole)

