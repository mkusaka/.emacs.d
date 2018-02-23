;; init.el

(require 'cask)
(cask-initialize)

;; highlight-symbol
;; 自動ハイライトをしたいならば
(add-hook 'prog-mode-hook 'highlight-symbol-mode)
;;; ソースコードにおいてM-p/M-nでシンボル間を移動
(add-hook 'prog-mode-hook 'highlight-symbol-nav-mode)
;;; シンボル置換
(global-set-key (kbd "M-s M-r") 'highlight-symbol-query-replace)

;; init-loader.el
(require 'init-loader)
;; logを表示させない
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/inits")
