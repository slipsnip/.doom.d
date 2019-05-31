;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
(require 'doom-themes)
(require 'winum)
(require 'js2-mode)
(load-theme 'doom-one t)
(winum-mode)
;; Set options
(setq
 projectile-project-search-path '("~/slipsnip/" "~/wip/")
 js2-basic-offset 2
)
