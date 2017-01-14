
(add-hook 'c-mode-hook (lambda () (ggtags-mode)))
(add-hook 'c-mode-hook (lambda () (local-set-key (kbd "C-c C-t C-j") 'ggtags-find-definition)))
(add-hook 'c-mode-hook (lambda () (local-set-key (kbd "C-c C-t C-r") 'ggtags-find-reference)))
(add-hook 'c-mode-hook (lambda () (local-set-key (kbd "C-c C-t C-s") 'ggtags-grep)))
(add-hook 'c-mode-hook (lambda () (local-set-key (kbd "C-c C-t C-m") 'ggtags-prev-mark)))
(add-hook 'c-mode-hook (lambda () (local-set-key (kbd "C-c C-t C-n") 'ggtags-next-mark)))
(add-hook 'c-mode-hook (lambda () (local-set-key (kbd "C-c C-t C-p") 'ggtags-prev-mark)))
(add-hook 'c-mode-hook (lambda () (local-set-key (kbd "C-c C-t C-d") 'ggtags-show-definition)))
(add-hook 'c-mode-hook (lambda () (local-set-key (kbd "C-c C-t C-o") 'ggtags-find-other-symbol)))

(add-hook 'c-mode-hook (lambda () (local-set-key (kbd "M-i") 'ac-complete-abbrev)))
(add-hook 'c-mode-hook (lambda () (local-set-key (kbd "M-o") 'ac-complete-gtags)))

;; google c style
(load "~/.emacs.d/lib/google-c-style.el")
(add-hook 'c-mode-common-hook 'google-set-c-style)

;; TODO
;; from https://www.kernel.org/doc/Documentation/CodingStyle
;; (defun c-lineup-arglist-tabs-only (ignored)
;;   "Line up argument lists by tabs, not spaces"
;;   (let* ((anchor (c-langelem-pos c-syntactic-element))
;;          (column (c-langelem-2nd-pos c-syntactic-element))
;;          (offset (- (1+ column) anchor))
;;          (steps (floor offset c-basic-offset)))
;;     (* (max steps 1)
;;        c-basic-offset)))

;; (add-hook 'c-mode-common-hook
;;           (lambda ()
;;             ;; Add kernel style
;;             (c-add-style
;;              "linux-tabs-only"
;;              '("gomspace" (c-offsets-alist
;;                            (arglist-cont-nonempty
;;                             c-lineup-gcc-asm-reg
;;                             c-lineup-arglist-tabs-only))))))

;; (add-hook 'c-mode-hook
;;           (lambda ()
;;             (let ((filename (buffer-file-name)))
;;               ;; Enable kernel mode for the appropriate files
;;               (when (and filename
;;                          (string-match (expand-file-name "~/src/")
;;                                        filename))
;;                 (setq indent-tabs-mode t)
;;                 (setq show-trailing-whitespace t)
;;                 (c-set-style "linux-tabs-only")))))
;; #########################
