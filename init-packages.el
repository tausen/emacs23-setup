; list the packages you want
(setq package-list '(better-defaults
		     ggtags
		     popup
		     auto-complete
		     fuzzy
		     helm
		     magit
		     org
		     undo-tree
		     multiple-cursors
		     adaptive-wrap
		     openwith
		     dired+
		     dired-details
		     projectile
		     python
		     smex
		     helm-projectile
		     winner
		     git-gutter+
		     git-gutter-fringe+
		     undo-tree
		     diminish
		     flx
		     s
		     cl))

; list the repositories containing them
(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))