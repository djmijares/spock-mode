;; This is an example of how you could set up this file. This setup
;; requires a directory called util in the project root and that the
;; util directory contains the testing tools ert and espuds.

(let* ((features-directory
        (file-name-directory
         (directory-file-name (file-name-directory load-file-name))))
       (project-directory
        (file-name-directory
         (directory-file-name features-directory))))
  (setq spock-mode-root-path project-directory)
  (setq spock-mode-util-path (expand-file-name "util" spock-mode-root-path)))

(add-to-list 'load-path spock-mode-root-path)
(add-to-list 'load-path (expand-file-name "espuds" spock-mode-util-path))
(add-to-list 'load-path (expand-file-name "ert" spock-mode-util-path))

(require 'spock-mode)
(require 'espuds)
(require 'ert)


(Setup
 ;; Before anything has run
 )

(Before
 ;; Before each scenario is run
 (switch-to-buffer
  (get-buffer-create "*testing-buffer*"))
 (erase-buffer)
 (transient-mark-mode 1))

(After
 ;; After each scenario is run
 )

(Teardown
 ;; After when everything has been run
 )
