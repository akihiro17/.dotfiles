(setq-default skk-init-file "init/.skk"
              skk-user-directory "~/.ddskk")

(setq skk-henkan-strict-okuri-precedence t)
(setq skk-check-okurigana-on-touroku t)
(setq skk-sticky-key ";")
(setq skk-large-jisyo "~/.emacs.d/share/skk/SKK-JISYO.L")

;; prevent dired-x from binding C-x C-j
(setq-default dired-bind-jump nil)

(setq mode-line-format
      (append '("" skk-modeline-input-mode) mode-line-format))
