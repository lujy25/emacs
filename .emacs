;;etags configuration
(setq tags-file-name "~/sim973/src/TAGS")
;;minebuffer show line configuration
(setq column-number-mode t)
(setq line-number-mode t)
;;goto-line
(define-key global-map "\C-f" 'goto-line)
;;close init windows
(setq inhibit-startup-message t)
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

;;auto-complete configuration
(add-to-list 'load-path "~/.emacs.d/auto-complete-1.3.1/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete-1.3.1/ac-dict")
(ac-config-default)
(defcustom ac-modes
'(emacs-lisp-mode
lisp-mode
lisp-interaction-mode
c-mode cc-mode c++-mode
java-mode clojure-mode scala-mode
scheme-mode
ocaml-mode tuareg-mode
perl-mode cperl-mode python-mode ruby-mode
ecmascript-mode javascript-mode js-mode js2-mode php-mode css-mode
makefile-mode sh-mode fortran-mode f90-mode ada-mode
xml-mode sgml-mode)
"Major modes `auto-complete-mode' can run on."
:type '(repeat symbol)
:group 'auto-complete)