(add-to-list 'auto-mode-alist '("\\.rb$latex " . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

(custom-set-variables
 '(ruby-insert-encoding-magic-comment nil))

(autoload 'run-ruby "inf-ruby"
"Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Se local key defs for inf-ruby in ruby-mode")

(setq ruby-deep-indent-paren-style nil)
