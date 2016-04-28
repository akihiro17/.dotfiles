(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;; key bind
(global-set-key "\C-h" 'delete-backward-char)

;;backup fileを作らない
(setq make-backup-files nil)

;; el-get
(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(setq el-get-user-package-directory (locate-user-emacs-file "init"))
(add-to-list 'el-get-recipe-path "~/.emacs.d/recipes")

(el-get-bundle tarao/with-eval-after-load-feature-el)
(el-get-bundle helm)
(el-get-bundle auto-complete)
(el-get-bundle flycheck)
(el-get-bundle ddskk)
(el-get-bundle sticky)
(el-get-bundle sequential-command)
(el-get-bundle sequential-command-config)
(el-get-bundle elscreen)
(el-get-bundle magit)

;; prog modes
(el-get-bundle coffee-mode)
(el-get-bundle json-mode)
(el-get-bundle less-css-mode)
(el-get-bundle ruby-mode)
(el-get-bundle sass-mode)
(el-get-bundle slim-mode)
(el-get-bundle elixir-mode)
(el-get-bundle tuareg) ;; ocaml

;; ruby specific settings
(el-get-bundle rubocop)
(el-get-bundle ruby-block)
(el-get-bundle ruby-electric)
(el-get-bundle inf-ruby)
(el-get-bundle robe)
