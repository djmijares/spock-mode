(defun spock-go-to-current-test ()
  (search-backward-regexp "def"))

(defun spock-comment-out-test ()
  (insert "/*")
  (search-forward-regexp "{")
  (forward-sexp)
  (insert "*/"))

(defun spock-uncomment-out-test ()
  )

(defun spock-toggle-test ()
  (interactive)
  (spock-go-to-current-test)
  (if (looking-at "/*")
      (spock-comment-out-test)
    (spock-uncomment-out-test)))

(global-set-key (kbd "C-c C-v tt") 'spock-toggle-test)

(provide 'spock-mode)
