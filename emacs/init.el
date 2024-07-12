;; Enable AUCTeX
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

;; Set PDF mode by default
(setq TeX-PDF-mode t)

;; Enable RefTeX for better reference management
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)

;; Automatically parse files after saving
(setq TeX-auto-save t)
(setq TeX-parse-self t)

;; Enable syntax highlighting for LaTeX
(add-hook 'LaTeX-mode-hook 'TeX-source-correlate-mode)

;; Configure the TeX command
(setq TeX-command-list
      '(("LaTeX" "pdflatex %s" TeX-run-command t t :help "Run pdflatex")
        ("View" "xdg-open %s.pdf" TeX-run-discard-or-function t t :help "View PDF")
        ("BibTeX" "bibtex %s" TeX-run-BibTeX t t :help "Run BibTeX")
        ("Clean" "TeX-clean" TeX-run-command t t :help "Delete generated intermediate files")
        ("Clean All" "TeX-clean t" TeX-run-command t t :help "Delete generated intermediate and output files")))

;; autosave in a folder auto-save in the user emacs directory
(setq auto-save-file-name-transforms
      `((".*" ,(concat user-emacs-directory "auto-save/") t)))

;; save backup in ad hoc directory in the usser emacs directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))
