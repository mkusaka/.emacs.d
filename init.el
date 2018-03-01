;; init.el

(package-initialize)

;; for Mac
(when (equal system-type 'darwin)
  (require 'cask)
)
;; for Linux
(when (equal system-type 'gnu/linux)
  (require 'cask "~/.cask/cask.el")
)
(cask-initialize)

;; init-loader.el
(require 'init-loader)
;; logを表示させない
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/inits")

