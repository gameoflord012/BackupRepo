(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

;; (unless (package-installed-p 'spacemacs-theme)
;;   (package-refresh-contents)
;;   (package-install 'spacemacs-theme))

(use-package kanagawa-theme
  :ensure t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("9e296dbc86374778cca0f22cfd7cd44d35e7c2e678085417be97251ce7c75dcc" "d7bf35cbf07fe90b420ca85625d4e1baff08fd64282562dde9dc788ed89c8242" "7fd8b914e340283c189980cd1883dbdef67080ad1a3a9cc3df864ca53bdc89cf" default))
 '(gdb-many-windows t)
 '(gdb-show-main t)
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f")))
 '(org-fontify-done-headline nil)
 '(org-fontify-todo-headline nil)
 '(package-selected-packages
   '(kanagawa-theme counsel-tramp smooth-scrolling good-scroll ivy-posframe smooth-scroll minions moody rg projectile fzf dap-mode ivy-mode counsel helm-lsp lsp-treemacs lsp-ivy flycheck xterm-color cmake-mode yasnippet-snippets yasnippet lsp-ui hungry-delete company-irony company dashboard rainbow-delimiters switch-window rainbow rainbow-mode avy smex org-bullets beacon spacemacs-theme which-key use-package))
 '(pdf-view-midnight-colors '("#b2b2b2" . "#292b2e")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#292b2e" :foreground "#b2b2b2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight semi-bold :height 173 :width normal :foundry "DAMA" :family "Ubuntu Mono")))))
