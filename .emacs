
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes (quote (manoj-dark)))
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(standard-indent 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(defun my-setup-indent(n)
  (setq-default tab-width n)
  (setq-local c-basic-offset n)
  (setq c-basic-indent n)
  (setq-local coffee-tab-width n)
  (setq-local javascript-indent-level n)
  (setq-local js-indent-level n)
  (setq-local js2-basic-offset n)
  (setq-local web-mode-markup-indent-offset n)
  (setq-local web-mode-css-indent-offset n)
  (setq-local web-mode-code-indent-offset n)
  (setq-local css-indent-offset n)
  )

(defun personal-preferences()
  (interactive)
  (message "enabling your preferred coding settings...")
  (setq indent-tabs-mode nil)
	(flyspell-mode)
  (my-setup-indent 2)
  )


; setting hooks
; --------------
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

; keybindings
; -----------
(global-set-key (kbd "C-o") 'ispell-word)


; don't show default start up screen
(setq inhibit-startup-screen t)

; enable aspell
(setq ispell-program-name "/usr/local/bin/aspell")

(load-theme 'solarized t)

