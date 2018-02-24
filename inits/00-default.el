;;; 領域の色付け
(setq transient-mark-mode t)

;;文字の色つけ
(global-font-lock-mode t)

;;カーソルのある行番号を表示
(setq line-number-mode t)

;;フレームのタイトル指定
(setq frame-title-format
    (concat "%b - emacs@" system-name))

;; @@ 基本の設定
(unless window-system
  frame-background-mode 'dark)		; or 'ligh

;;時計を表示
(display-time)

;;警告音を消す
(setq visible-bell t)

;;; 対応する括弧を光らせる
(show-paren-mode)

;;括弧を補完
(global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "{") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\`") 'skeleton-pair-insert-maybe)
(setq skeleton-pair 1)

;;改行,Tabなどを色付ける.
;;参考サイトhttp://masutaka.net/chalow/2011-10-12-1.html
(global-whitespace-mode 1)

;;補完可能なものを随時表示
(icomplete-mode 1)

;; indent and newline
(define-key global-map (kbd "RET") 'newline-and-indent)

(defun yank-and-indent ()
  "Yank and then indent the newly formed region according to mode."
  (interactive)
  (yank)
  (call-interactively 'indent-region))

(global-set-key "\C-y" 'yank-and-indent)

;;reload
(global-set-key
  [f12] 'eval-buffer)

;;find file で文字の大小を区別しない
(setq completion-ignore-case t)

;; ace jump mode
(require 'ace-jump-mode)
(global-set-key (kbd "C-c SPC") 'ace-jump-mode)
