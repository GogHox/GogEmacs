;;------------------------- Coding -------------------------;;

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))


(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(setq-default pathname-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)

;; set font
(set-default-font "Noto Mono-12")

;;------------------------- UI -------------------------;;

;; cursor style
(setq-default cursor-type 'bar)

;; show line number
(setq column-number-mode t)
(setq line-number-mode t)
(global-linum-mode t)
(setq linum-format "%3d ")

;; paren match
(show-paren-mode t)

;; highlight current line
;(global-hl-line-mode t)

;; show time
(display-time-mode 1)
(setq display-time-24hr-format t)

;;------------------------- END -------------------------;;



;;------------------------- Other -------------------------;;

;; close startup message
(setq inhibit-startup-message t)
(setq gnu-inhibit-startup-message t)

;; close alert bell
;(setq visible-bell t)

;; default to 4 visible space
(setq-default tab-width 4)

;; close auto-backup
(setq make-backup-files nil)
(setq auto-save-mode nil)
(setq-default make-backup-files nil)

;; use y-or-n-p replace yes-or-no-p
(fset 'yes-or-no-p 'y-or-n-p)

;; scorll margin
(setq scroll-margin 3 scroll-conservatively 10000)

;; let go to move pointer
(global-set-key (kbd "C-c C-b") 'windmove-left)
(global-set-key (kbd "C-c C-f") 'windmove-right)
(global-set-key (kbd "C-c C-n") 'windmove-down)
(global-set-key (kbd "C-c C-p") 'windmove-up)
;;------------------------- END -------------------------;;

;;----------------------- C/C++ -------------------------;;
;; C/C++ show function list
(defun list-funcs (arg)
  "List functions in buffer." 
  (interactive "p") 
  (message "functions")
  (list-matching-lines "^[A-Za-z0-9_]+[ ]+[A-Za-z0-9_<>: ]*[\(]"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (js2-mode company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

