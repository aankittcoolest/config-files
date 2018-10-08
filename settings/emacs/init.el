(package-initialize)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpha" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("org" . "https://orgmode.org/elpa/"))

(setq indo-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)


;;let's talk about themes
;; (use-package zenburn-theme
;;   :ensure t)


(org-babel-load-file (expand-file-name "~/config-files/settings/emacs/myinit.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (mu4e-alert org-mime projectile atomic-chrome ox-reveal zenburn-theme which-key use-package try org-pdfview org-bullets magit evil auto-complete ace-window ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))




