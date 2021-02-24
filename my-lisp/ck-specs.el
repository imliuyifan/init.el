;; Yifan's ctrl-k keybinding specs 
;;------------------------- C-k command for ipython -------------------------
;; This function allows C-k to clear eshell buffer
(defun eshell/clear ()
  "To clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))
(defun eshell-clear-buffer ()
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)
    (eshell-send-eof-to-process)))

(add-hook 'eshell-mode-hook
      '(lambda() (local-set-key (kbd "C-k") 'eshell-clear-buffer)))

;;------------------------- C-k command for eshell -------------------------
;; This function sllows C-k to clear ipython buffer
(defun clear-ipython-buffer ()
  "Clear the ipython buffer."
  (interactive)
  (let ((comint-buffer-maximum-size 0))
    (comint-truncate-buffer)))
(add-hook 'inferior-python-mode-hook
          '(lambda() (local-set-key (kbd "C-k") 'clear-ipython-buffer)))
