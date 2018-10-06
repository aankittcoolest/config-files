(setq inhibit-startup-message t)


(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpha" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages
   (quote
    (zenburn-theme evil magit let-alist pdf-tools ace-window org-bullets which-key use-package try))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))

;; Org-mode stuff

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))


(setq indo-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)



(use-package ace-window
  :ensure t
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
    (custom-set-faces
     '(aw-leading-char-face
       ((t (:inherit ace-jump-face-foreground :height 3.0)))))
    ))

(setq browse-url-browser-function 'browse-url-generic
            browse-url-generic-program "google-chrome")



;; Determine the specific system type.
;; Emacs variable system-type doesn't yet have a "wsl/linux" value,
;; so I'm front-ending system-type with my variable: sysTypeSpecific.
;; I'm no elisp hacker, so I'm diverging from the elisp naming convention
;; to ensure that I'm not stepping on any pre-existing variable.
(setq-default sysTypeSpecific  system-type) ;; get the system-type value

(cond
 ;; If type is "gnu/linux", override to "wsl/linux" if it's WSL.
 ((eq sysTypeSpecific 'gnu/linux)
  (when (string-match "Linux.*Microsoft.*Linux"
		      (shell-command-to-string "uname -a"))

    (setq-default sysTypeSpecific "wsl/linux") ;; for later use.
    (setq
     cmdExeBin"/mnt/c/Windows/System32/cmd.exe"
     cmdExeArgs '("/c" "start" "") )
    (setq
     browse-url-generic-program  cmdExeBin
     browse-url-generic-args     cmdExeArgs
     browse-url-browser-function 'browse-url-generic)
         )))
(setq
     cmdExeBin"/mnt/c/Windows/System32/cmd.exe"
     cmdExeArgs '("/c" "start" "") )
    (setq
     browse-url-generic-program  cmdExeBin
     browse-url-generic-args     cmdExeArgs
     browse-url-browser-function 'browse-url-generic)
         
(setq dired-guess-shell-alist-user '(("\\.txt\\" "\/mnt\/c\/Program\\ Files\\ \\(x86\\)\/Notepad++\/notepad++.exe")))

(add-hook 'dired-load-hook
	  (lambda ()
	    (load "dired-x")
	    ;; Set dired-x global variables here.  For example:
	    ;; (setq dired-guess-shell-gnutar "gtar")
	    ;; (setq dired-x-hands-off-my-keys nil)
	    ))
(add-hook 'dired-mode-hook
	  (lambda ()
	    ;; Set dired-x buffer-local variables here.  For example:
	    ;; (dired-omit-mode 1)
	                     ))


(setq dired-guess-shell-alist-user '(("\\.txt$" "\/mnt\/c\/Program\\ Files\\ \\(x86\\)\/Notepad++\/notepad++.exe ")))

;;bind refresh packages to F1
(global-set-key (kbd "<f12>") 'package-refresh-contents)
(global-set-key (kbd  "<f5>") 'revert-buffer)
(global-set-key (kbd "C-x p") 'find-file-at-point)

;;set up evil mode inside emacs
(use-package evil
  :ensure t)
(evil-mode 1)

;;define function to kill buffer without prompt if it is not modified.
(defun volatile-kill-buffer ()
  (interactive)
  (let ((buffer-modified-p nil))
    (kill-buffer (current-buffer))))

(global-set-key (kbd "C-x k") 'volatile-kill-buffer)

;;change all prompts to y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; install pdf viewer
(use-package pdf-tools
	     :ensure t
	     :config
	     (pdf-tools-install))

(use-package org-pdfview
  :ensure t)


(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
;; Treat clipboard input as UTF-8 string first; compound text next, etc.
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))


;; set a default font
(when (member "DejaVu Sans Mono" (font-family-list))
        (set-face-attribute 'default nil :font "DejaVu Sans Mono"))


(menu-bar-mode -1)
(setq-default mode-line-format nil)

;;let's talk about themes
;;(use-package zenburn-theme
;;  :ensure t)

(setq initial-scratch-message ";; Hello Ankit!")
