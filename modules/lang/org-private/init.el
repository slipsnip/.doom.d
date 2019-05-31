;;; lang/org-private/init.el -*- lexical-binding: t; -*-

(after! org
    (setq org-file-directory "~/Yandex.Disk/org/")
    ;; (setq org-agenda-files '(org-file-directory))
    (setq org-agenda-files '("~/Yandex.Disk/org/"))
    (setq org-default-notes-file (concat org-file-directory "notes.org"))
    (setq org-default-events-file (concat org-file-directory "events.org"))
    (setq org-projectile-file "TODOs.org")
    (setq org-enable-github-support t)
    (setq org-capture-templates '(("t" "Todo" entry (file org-default-notes-file)
                                "* TODO %?\n%U" :empty-lines 1)
                                  ("T" "Todo with Clipboard" entry (file org-default-notes-file)
                                "* TODO %?\n%U\n   %c" :empty-lines 1)
                              ("n" "Note" entry (file org-default-notes-file)
                                "* NOTE %?\n%U" :empty-lines 1)
                              ("N" "Note with Clipboard" entry (file org-default-notes-file)
                                "* NOTE %?\n%U\n   %c" :empty-lines 1)
                              ("e" "Event" entry (file+headline org-default-events-file "Transient")
                                "* EVENT %?\n%U" :empty-lines 1)
                              ("E" "Event With Clipboard" entry (file+headline org-default-events-file "Transient")
                                "* EVENT %?\n%U\n   %c" :empty-lines 1)))
   )