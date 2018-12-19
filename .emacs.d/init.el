
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;; key bind
(global-set-key "\C-h" 'delete-backward-char)

;;backup fileを作らない
(setq make-backup-files nil)

(setq x-select-enable-clipboard t)

;; ファイル保存時に末尾の空白を消す
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(when (eq system-type 'darwin)
  (setq ns-command-modifier (quote meta)))

;; recentf
(recentf-mode 1)
(setq recentf-save-file "~/.emacs.d/.recentf")
(setq recentf-max-saved-items 200) ;; 200ファイルまで履歴に保存する
(setq recentf-auto-cleanup 'never)  ;; 存在しないファイルは消さない
(setq recentf-auto-save-timer (run-with-idle-timer 30 t 'recentf-save-list))

;; eacl
(add-to-list 'load-path (locate-user-emacs-file "elisp"))
(require 'eacl)
(global-set-key (kbd "C-c C-c") 'eacl-complete-line)

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
(el-get-bundle counsel)
(el-get-bundle company)
(el-get-bundle flycheck)
(el-get-bundle ddskk)
(el-get-bundle sticky)
(el-get-bundle sequential-command-config)
(el-get-bundle sequential-command)
(el-get-bundle elscreen)
(el-get-bundle magit)
(el-get-bundle find-file-in-project)
(el-get-bundle dumb-jump)

;; prog modes
(el-get-bundle js2-mode)
(el-get-bundle json-mode)
(el-get-bundle less-css-mode)
(el-get-bundle ruby-mode)
(el-get-bundle sass-mode)
(el-get-bundle slim-mode)
(el-get-bundle elixir)
(el-get-bundle go-mode)
(el-get-bundle tuareg) ;; ocaml
(el-get-bundle terraform-mode)

;; ruby specific settings
(el-get-bundle rubocop)
(el-get-bundle ruby-block)
(el-get-bundle ruby-electric)
(el-get-bundle inf-ruby)
(el-get-bundle robe)

(setq el-get-sources
      '(
        (:name magite
               :info nil
               :build (("touch" "lisp/magit-autoloads.el"))
               :build/berkeley-unix nil)
        ))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (dumb-jump company counsel robe tuareg)))
 '(ruby-insert-encoding-magic-comment nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
