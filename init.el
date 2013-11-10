
;(add-to-list 'load-path "~/.emacs.d/lib/starter-kit")
;(load "~/.emacs.d/init-starter-kit.el")
(load "~/.emacs.d/lib/better-defaults/better-defaults.el")

;;; MAT init el
(add-to-list 'load-path
              "~/.emacs.d/lib/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

(load "~/.emacs.d/init-web.el")
(load "~/.emacs.d/init-looks.el")
(load "~/.emacs.d/init-basics.el")
(load "~/.emacs.d/init-dired.el")
(load "~/.emacs.d/init-bfin.el")
(load "~/.emacs.d/init-term.el")
(load "~/.emacs.d/init-hotkeys.el")
(load "~/.emacs.d/init-commands.el")
(load "~/.emacs.d/init-matlab.el")
(load "~/.emacs.d/init-python.el")
(load "~/.emacs.d/init-irc.el")
(load "~/.emacs.d/init-cedet.el")
(load "~/.emacs.d/init-ido.el")
(load "~/.emacs.d/init-latex.el")
(load "~/.emacs.d/init-git.el")

;; auto-complete
(add-to-list 'load-path "~/.emacs.d/lib/auto-complete/")
(require 'auto-complete)
;(global-auto-complete-mode 1) ; (uncomment to enable by default)

;; Semantic mode
(add-hook 'semantic-mode-hook (lambda () (global-semantic-idle-summary-mode 1)))
(add-hook 'semantic-mode-hook (lambda () (global-semantic-idle-completions-mode 1)))

;; svn for emacs23
(add-to-list 'load-path "~/.emacs.d/lib/vc-svn17-el")
(require 'vc-svn17)

(require 'fill-column-indicator)

;; Proper autopair/autoclose parenthesis
(add-to-list 'load-path "~/.emacs.d/lib/autopair/") ;; comment if autopair.el is in standard load path 
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers

(load "~/.emacs.d/custom.el")
