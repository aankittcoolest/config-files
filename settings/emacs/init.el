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
