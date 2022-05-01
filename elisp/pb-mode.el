;;; Major mode for PB grammar definitions

(defvar pb-mode-map
   (let ((map (make-sparse-keymap)))
     (define-key map [foo] 'sample-do-foo)
     map)
   "Keymap for `pb-mode'.")

(defvar pb-mode-syntax-table
  (let ((st (make-syntax-table)))
    (modify-syntax-entry ?/ ". 124b" st)
    (modify-syntax-entry ?* ". 23" st)
    (modify-syntax-entry ?\n "> b" st)
    (modify-syntax-entry ?- "w" st)	; Hyphen is word
    st)
  "Syntax table for `pb-mode'.")

(defvar pb-mode-font-lock-keywords
  '(("\\([A-Za-z0-9-]+\\):" . (1 'font-lock-function-name-face)))
    "Keyword highlighting specification for `pb-mode'.")

;;;###autoload
(define-derived-mode pb-mode fundamental-mode "PB"
  "A major mode for editing Sample files."
  (setq-local font-lock-defaults
	      '(pb-mode-font-lock-keywords)))

(provide 'pb)
