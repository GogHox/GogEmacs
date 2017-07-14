;;------------------------- Coding -------------------------;;
;(set-language-environment 'Chinese-GB)
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
;;(set-default-font "Tlwg Typist-18")

;;------------------------- UI -------------------------;;
;; set window size
(setq default-frame-alist
	  '((height . 36)
		(width . 78)))

;; startup with full screen
;(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; cursor style
(setq-default cursor-type 'bar)

;; show line number
(setq column-number-mode t)
(setq line-number-mode t)
(global-linum-mode t)
(setq linum-format "%3d ")

;; paren match
(show-paren-mode t)

;; mouse avoidance
;;(mouse-avoidance-mode 'animate)

;; close scroll bar nil
(scroll-bar-mode -1)
(menu-bar-mode   -1) ; F10 can open
(tool-bar-mode   -1)

;; highlight current line
;(global-hl-line-mode t)

;; show time
;;(display-time-mode 1)
;;(setq display-time-24hr-format t)

;; scatch message
(setq initial-scratch-message
	  ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Welcome to use GogEmacs config... ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                 (__)              ;;
;;                 (oo)              ;;
;;           /------/                ;; 
;;          / |    ||                ;;  
;;        *  /---/                   ;;
;;            ~~   ~~                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
")

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

