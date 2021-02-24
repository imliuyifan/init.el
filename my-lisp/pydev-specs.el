;; pick your fav theme for python dev
(load-theme 'solarized-light t)
;; (load-theme 'solarized-dark t)
;; (load-theme 'gruvbox t)

;; Python interpreter setup follows this
;; use ipython which seems to support readline
;; https://github.com/jorgenschaefer/elpy/issues/1550
;; add this if necessary
;; python-shell-interpreter-args "--simple-prompt"
(setq python-shell-interpreter "ipython")

;; set elpy param
(setq elpy-rpc-virtualenv-path 'current)
(setq elpy-rpc-backend "jedi")

;; pyvenv config
(setenv "WORKON_HOME" "/Users/yifanliu/Dev/miniforge3/envs")
(pyvenv-workon "dev")

;; Config company-mode
 (setq  company-idle-delay            0.5
        company-minimum-prefix-length   1
        company-show-numbers            t)

;; swiper config
(progn
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  ;; enable this if you want `swiper' to use it
  ;; (setq search-default-mode #'char-fold-to-regexp)
  (global-set-key "\C-s" 'swiper)
  (global-set-key (kbd "C-c C-r") 'ivy-resume)
  (global-set-key (kbd "<f6>") 'ivy-resume)
  (global-set-key (kbd "M-x") 'counsel-M-x)
  (global-set-key (kbd "C-x C-f") 'counsel-find-file)
  (global-set-key (kbd "<f1> f") 'counsel-describe-function)
  (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
  (global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
  (global-set-key (kbd "<f1> l") 'counsel-find-library)
  (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
  (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
  (global-set-key (kbd "C-c g") 'counsel-git)
  (global-set-key (kbd "C-c j") 'counsel-git-grep)
  (global-set-key (kbd "C-c k") 'counsel-ag)
  (global-set-key (kbd "C-x l") 'counsel-locate)
  (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
  (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history))
