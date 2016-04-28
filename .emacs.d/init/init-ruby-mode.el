(add-to-list 'auto-mode-alist '("\\.rb$latex " . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

(custom-set-variables
 '(ruby-insert-encoding-magic-comment nil))

;;括弧の自動挿入
(require 'ruby-electric nil t)

;;endに対応する行のハイライト
(when (require 'ruby-block nil t)
  (setq ruby-block-highlight-toggle t))

(autoload 'run-ruby "inf-ruby"
"Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Se local key defs for inf-ruby in ruby-mode")

(defun ruby-mode-hooks ()
  (inf-ruby-keys)
  (ruby-electric-mode t)
  (ruby-block-mode t))

(add-hook 'enh-ruby-mode-hook 'ruby-mode-hooks)

(setq ruby-deep-indent-paren-style nil)
