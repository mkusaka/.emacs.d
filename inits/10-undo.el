;;;;;;;;;;;;;;;;;;;;;;;undohist;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (require 'undohist nil t)
  (undohist-initialize))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;undo-tree;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;C-x u undo-tree
(when (require 'undo-tree nil t)
  (global-undo-tree-mode))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;