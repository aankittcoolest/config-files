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

(put 'dired-find-alternate-file 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-export-backends '(ascii html icalendar latex md odt))
 '(package-selected-packages
   '(urlenc json-mode markdown-toc yasnippet-snippets yasnippet company-restclient restclient load-theme-buffer-local slack websocket request circe ox-jira magit multi-term emojify projectile ox-reveal all-the-icons powerline dired-hacks-utils unicode-fonts auto-dictionary auto-complete key-chord neotree evil-magit evil ace-jump-mode ace-window htmlize org-bullets which-key try use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
