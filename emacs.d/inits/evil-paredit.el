(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'evil-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'evil-paredit-mode)
(add-hook 'lisp-mode-hook             #'evil-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'evil-paredit-mode)
(add-hook 'scheme-mode-hook           #'evil-paredit-mode)
