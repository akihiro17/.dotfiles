(require 'ruby-electric)
(with-eval-after-load 'ruby-mode
  (add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t))))
