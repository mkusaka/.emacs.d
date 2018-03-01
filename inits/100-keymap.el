;;C-h でバックスペース
(define-key global-map (kbd "C-h") 'delete-backward-char)

;; windwmove
(windmove-default-keybindings)
(global-set-key (quote [kp-8]) (quote windmove-up))
(global-set-key (quote [kp-2]) (quote windmove-down))
(global-set-key (quote [kp-6]) (quote windmove-right))
(global-set-key (quote [kp-4]) (quote windmove-left))

;; ;;C-\でprevious line
;; (define-key global-map (kbd "C-\\") 'previous-line)
(define-key global-map (kbd "C-:") 'previous-line)

;;x11とクリップボードを共有
(setq x-select-enable-clipboard t)
