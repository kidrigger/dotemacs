;;; package -- Summary

;;; Commentary:
;;; Kidrigger's Early Init

;;; Code:

;; UI changes
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

;; Turn of ~use-package~ since we prefer elpaca
(setq package-enable-at-startup nil)

;; Symlinks are to be treated as their files even when in version control
;; Use mostly for GNU Linux systems
(setq vc-follow-symlinks t)

;; Add default font
(add-to-list 'default-frame-alist
             '(font . "FiraCode Nerd Font Mono-10"))

(when (fboundp 'startup-redirect-eln-cache)
  (startup-redirect-eln-cache
   (convert-standard-filename
    (expand-file-name  "var/eln-cache/" user-emacs-directory))))

(provide 'early-init)
;;; early-init.el ends here
