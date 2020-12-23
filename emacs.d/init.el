;; Make startup faster by reducing the frequency of garbage
;; collection. The default is 800 kilobytes.
(setq gc-cons-threshold (* 50 1000 1000))

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

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
  (setq use-package-always-ensure nil)
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

(use-package org)

(let* ((conf "~/.emacs.d/emacs-init")
       (el (concat conf ".el"))
       (org (concat conf ".org")))
  (if (file-exists-p el)
      (load-file el)
    (org-babel-load-file org)))

;; Make GC pauses faster by decreasing the threshold.
(setq gc-cons-threshold (* 2 1000 1000))
