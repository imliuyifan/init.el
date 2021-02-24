;; Yifan's init.el setup
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Initialize use-package, install it if not installed
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;; pick your fav theme here
(use-package gruvbox-theme)
(use-package solarized-theme)

(use-package elpy
  :init (elpy-enable)
  :config
  (setq elpy-shell-echo-output nil)
  )

;; use realgud for debugging
(use-package realgud)
;; (use-package realgud-ipdb) ;; very buggy, just use pdb

;; smartparens config
(use-package smartparens
  :pin melpa-stable
  :config (require 'smartparens-config)
  (smartparens-global-mode t))

;; which-key package
(use-package which-key
  :config (which-key-mode))

(use-package magit)

;; swiper config is in pydev-specs
(use-package counsel)
(use-package swiper)

;; load yifan's specs: linum, c-k behavior, pydev specs
(add-to-list 'load-path "~/.emacs.d/my-lisp/")
(load "my-defaults")
(load "linum-specs")
(load "ck-specs")
(load "~/.emacs.d/my-lisp/pydev-specs")

;; load customized stuff (by emacs)
(setq custom-file "~/.emacs.d/.custom.el")
