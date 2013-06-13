(add-to-list 'load-path user-emacs-directory)

(require 'my-packages)
(load-my-packages)
(mapc 'require
      '(cl my-defuns my-keymaps uniquify))

(tool-bar-mode -1)
(setq visible-bell 1)

(global-linum-mode 1)
(scroll-bar-mode -1)
(show-paren-mode 1)
(turn-on-font-lock)

; always fullscreen
(set-frame-parameter nil 'fullscreen 'fullboth)
(set-frame-parameter (selected-frame) 'alpha '(95 95))
(add-to-list 'default-frame-alist '(alpha 95 95))

(setq
 ;; backups
 backup-directory-alist `((".*" . ,temporary-file-directory))
 auto-save-file-name-transforms `((".*" ,temporary-file-directory))

 ;; uniquify
 uniquify-buffer-name-style 'post-forward
 uniquify-separator ":"

 mac-option-modifier 'meta

 ;; tramp
 tramp-default-method "ssh"

 inhibit-splash-screen t

 shell-prompt-pattern "^[^a-zA-Z].*[#$%>] *"

 comint-buffer-maximum-size 10240

 ;; ediff should use the selected frame
 ediff-window-setup-function 'ediff-setup-windows-plain
 ediff-split-window-function 'split-window-horizontally

 ;; copy/paste
; interprogram-cut-function 'paste-to-osx
; interprogram-paste-function 'copy-from-osx
 )

                                        ; truncate long buffers
(add-hook 'comint-output-filter-functions 'comint-truncate-buffer)

                                        ; tabs
(setq-default
 indent-tabs-mode nil
 tab-width 4)

(set-default 'tramp-default-proxies-alist (quote ((".*" "\\`root\\'" "/ssh:%h:"))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Inconsolata" :foundry "nil" :slant normal :weight normal :height 145 :width normal)))))

;(add-to-list 'auto-mode-alist '("emacs" . lisp-interaction-mode))
