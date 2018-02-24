;;anzu
(require 'anzu)
(global-anzu-mode +1)


(global-set-key (kbd "C-c r") 'anzu-query-replace)
(global-set-key (kbd "C-c R") 'anzu-query-replace-regexp)
(global-set-key (kbd "C-c c") 'anzu-query-replace-at-cursor-thing)
