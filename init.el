(setq inhibit-startup-message t)

(scroll-bar-mode -1) ; Disable visible scrollbar
(tool-bar-mode -1)   ; Disbale the toolbar
(tooltip-mode -1)    ; Disable tooltops

(menu-bar-mode -1)    ; Disable the menu bar

(scroll-bar-mode -1)
(blink-cursor-mode -1)

(recentf-mode 1)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)

(setq make-backup-files nil); stop creating ~ files

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(set-face-attribute 'default nil :font "GeistMonoNerdFontMono" :height 115)

;; Show line numbers
(column-number-mode)
(global-display-line-numbers-mode t)

(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)

(setopt display-fill-column-indicator-column 80)

(put 'upcase-region 'disabled nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(modus-operandi-tinted))
 '(custom-safe-themes
   '("4b2d789ae8bc360b9d636883377a5a7dec7c0a875203d23b74f081c2bafbae08"
     default))
 '(package-selected-packages '(php-mode svelte-mode))
 '(warning-suppress-types '((initialization) (use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; svelte-mode
(add-to-list 'load-path "~/svelte-mode")
(require 'svelte-mode)

;; Show Trailing Whitespaces
(require 'whitespace)

(setq whitespace-style '(face trailing space-mark tab-mark))
(setq whitespace-display-mappings
      '((space-mark 32 [183] [46])      ; SPACE as middle dot or dot
        (tab-mark 9 [9655 9] [92 9])
        (space-mark 32 [183]))  ; TAB as ▷ or \

(global-whitespace-mode 1)
