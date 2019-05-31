;;; private/wurst/config.el -*- lexical-binding: t; -*-
;; Requires having added a keyring called email using seahorse / other means
;; and adding a password / secret for each of the 3 preceing settings
(setq mail-host-address (secrets-get-secret "email" "mail-host-address"))
(setq user-full-name (secrets-get-secret "email" "user-full-name"))
(setq user-mail-adress (secrets-get-secret "email" "user-mail-address"))
;; Requires having setup and configured msmtp localy
(setq mail-user-agent 'message-user-agent)
(setq message-send-mail-function 'message-send-mail-with-sendmail)
(setq message-kill-buffer-on-exit t)
(setq mail-specify-envelope-from t)
(setq sendmail-program "/usr/bin/msmtp"
      mail-specify-envelope-from t
      mail-envelope-from 'header
      message-sendmail-envelope-from 'header)

