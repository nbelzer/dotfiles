;; Make startup faster by reducing the frequency of garbage
;; collection. The default is 800 kilobytes.
(setq gc-cons-threshold (* 50 1000 1000))

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))



;; Initialise the packages, avoiding a re-initialisation.
(unless (bound-and-true-p package--initialized)
  (setq package-enable-at-startup nil)
  (package-initialize))

;; Make sure `use-package' is available.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Configure `use-package' prior to loading it.
(eval-and-compile
  (setq use-package-always-ensure t)
  (setq use-package-always-defer nil)
  (setq use-package-always-demand nil)
  (setq use-package-expand-minimally nil)
  (setq use-package-enable-imenu-support t)
  (setq use-package-compute-statistics t)
  (setq use-package-hook-name-suffix nil))

(eval-when-compile
  (require 'use-package))

(use-package vc
  :config
  (setq vc-follow-symlinks t)) ; Because my dotfiles are managed that way

(use-package org
  :ensure t)

;; Some basic settings
(setq frame-title-format '("%b"))
(setq ring-bell-function 'ignore)
(setq use-short-answers t)

(let* ((conf "~/.emacs.d/emacs-init")
       (el (concat conf ".elc"))
       (org (concat conf ".org")))
  (if (or (file-exists-p el) (file-symlink-p el))
      (load-file el)
    (progn (org-babel-load-file org)
	       (message "falling back on org-babel-load-file for init"))))

;; Make GC pauses faster by decreasing the threshold.
(setq gc-cons-threshold (* 2 1000 1000))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bibtex-autokey-name-year-separator "")
 '(bibtex-autokey-titleword-separator "-")
 '(bibtex-autokey-titlewords 2)
 '(bibtex-autokey-titlewords-stretch 1)
 '(bibtex-autokey-year-title-separator "-")
 '(company-idle-delay 0.0)
 '(company-minimum-prefix-length 1)
 '(company-posframe-mode t)
 '(company-tooltip-limit 5)
 '(custom-safe-themes
   '("7ea491e912d419e6d4be9a339876293fff5c8d13f6e84e9f75388063b5f794d6" default))
 '(latex-run-command "pdflatex")
 '(lsp-solargraph-autoformat t)
 '(markdown-enable-math t)
 '(markdown-hide-markup t)
 '(mode-line-format
   '("%e" mode-line-front-space mode-line-mule-info mode-line-client mode-line-modified mode-line-remote mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position
     (vc-mode vc-mode)
     "  " mode-line-misc-info mode-line-end-spaces))
 '(ns-command-modifier 'control)
 '(ns-control-modifier 'meta)
 '(org-download-image-org-width 300)
 '(org-download-screenshot-method "screencapture -i %s")
 '(package-selected-packages
   '(ob-racket dired window ac-emoji diff-hl vue-mode ob-lisp org-src slime ruby-electric lsp-python-ms ruby-test-mode diminish company-box eglot elfeed hide-mode-line org-present lsp-ivy typescript-mode svelte-mode org-ref ivy-bibtex bibtex-completion pdf-tools org-roam org-plus-contrib org-superstar yaml-mode dockerfile-mode graphql-mode racket-mode olivetti yasnippet which-key vterm use-package swift-mode pyvenv modus-vivendi-theme modus-operandi-theme magit lsp-sourcekit ivy-rich ivy-prescient go-mode flycheck-posframe flycheck-indicator exec-path-from-shell dap-mode counsel bufler beacon))
 '(warning-suppress-types '((comp) (:warning)))
 '(web-mode-block-padding -1))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
