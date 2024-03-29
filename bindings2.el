;;; package --- Summary: lolo
;;; Commentary:
;;; lolol
;;; Code:
;;; lolol
;;; ------------------------
;;; visual-regex
;;; (set (make-local-variable 'comment-auto-fill-only-comments) t)
(global-unset-key (kbd "M-r"))
(global-unset-key (kbd "M-g"))
(global-unset-key (kbd "M-c"))
(global-unset-key (kbd "M-s"))
(global-unset-key (kbd "M-k"))
(global-unset-key (kbd "M-p"))
(global-unset-key (kbd "C-x C-x"))
(global-unset-key (kbd "C-x m"))
(global-unset-key (kbd "C-x <backspace>"))
(global-unset-key (kbd "C-x DEL"))
(global-unset-key (kbd "C-S-q"))
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-S-<return>"))
(global-unset-key (kbd "C-x r"))
(global-unset-key (kbd "C-x C-c"))
(global-unset-key (kbd "s-g"))
(global-unset-key (kbd "C-x C-v"))
(global-unset-key (kbd "C-x C-z"))
(global-unset-key (kbd "C-x C-d"))
(global-unset-key (kbd "C-x +"))
(global-unset-key (kbd "C-x C-n"))
(global-unset-key (kbd "C-x C-o"))
(global-unset-key (kbd "C-x C-p"))
(global-unset-key (kbd "C-x #"))
(global-unset-key (kbd "C-x ("))
(global-unset-key (kbd "C-x )"))
(global-unset-key (kbd "C-x $"))
(global-unset-key (kbd "C-x 4"))
(global-unset-key (kbd "C-x 5"))
(global-unset-key (kbd "C-x 6"))
(global-unset-key (kbd "C-x 8"))
(global-unset-key (kbd "C-x C-e"))
(global-unset-key (kbd "C-x C-t"))
(global-unset-key (kbd "C-x ["))
(global-unset-key (kbd "C-x ]"))
(global-unset-key (kbd "C-x ="))
(global-unset-key (kbd "C-x {"))
(global-unset-key (kbd "C-x }"))
(global-unset-key (kbd "C-x C-a"))
(global-unset-key (kbd "C-x C-a"))
(global-unset-key (kbd "C-x ;"))
(global-unset-key (kbd "C-x ESC"))
(global-unset-key (kbd "C-<f10>"))
(global-unset-key (kbd "C-_"))

(defhydra hydra-spotify (:columns 4 :color red)
  " -- spotify hydra -----------"
  ("j" (lambda () (interactive) (spotify-next)) "next")
  ("k" (lambda () (interactive) (spotify-previous)) "prev")
  ("SPC" (lambda () (interactive) (spotify-playpause)) "play/pause")
  ("C-g" nil "quit")
  )

;; beautiful xcape hacks
;------------------------------------------------------------------------------;
(global-set-key       (kbd "<f9>") (lambi (insert "å")))
(global-set-key     (kbd "C-<f9>") 'benjamin/set-mark-command)            ;; C-[
(global-set-key        (kbd "C-å") 'benjamin/set-mark-command)
(global-set-key     (kbd "H-<f9>") 'counsel-yank-pop)                        ;;;
(global-set-key      (kbd "<f10>") 'er/expand-region)        ;;          Shift_L
(global-set-key    (kbd "C-<f12>") 'switch-to-buffer)        ;;         C-Ctrl_L
(global-set-key    (kbd "S-<f10>") 'benjamin/set-mark-command) ;;   L_Sht+R_Shft
(global-set-key    (kbd "C-<f10>") 'benjamin/set-mark-command) ;;   L_Sht+R_Shft
(global-set-key    (kbd "<C-tab>") 'benjamin/set-mark-command) ;;   L_Sht+R_Shft
;; (global-set-key    (kbd "C-<tab>") 'switch-to-buffer)     ;;  C-Tab || C-Caps
(global-unset-key    (kbd "<f2>"))
(global-set-key    (kbd "<f2>")  ";")
;------------------------------------------------------------------------------;
(global-set-key (kbd "M-SPC") 'benjamin/set-mark-command)
(global-set-key (kbd "C-SPC") 'benjamin/set-mark-command)
(global-set-key (kbd "M-RET") nil)
(global-set-key (kbd "C-s-f") 'find-file)

;; dubious -- todo
(global-set-key (kbd "C-;")     'hydra-lazy/body)                            ;;;
(global-set-key (kbd "C-:")      nil)									     ;;;
(global-set-key (kbd "C-'")     'hydra-lazy/body)							 ;;;
(global-set-key (kbd "C-ö")     (lambi (hydra-lazy/body)
                                       (shell-command "sleep 0.1 && xcape-restart")))							 ;;;
(global-set-key (kbd "<S-f9>")   nil)                                        ;;;
(global-set-key (kbd "H-SPC")   " ")
(global-set-key (kbd "M-<f12>")  nil)                                        ;;;
(global-set-key (kbd "M-'")      nil)                                          ;
(global-set-key (kbd "H-;")     'benjamin/helm-buffers-list)                 ;;;
(global-set-key (kbd "C-H-0")   'benjamin/helm-buffers-list)
(global-set-key (kbd "C-s-0")   'benjamin/helm-buffers-list)
(global-set-key (kbd "H-'")      nil)                                        ;;;
(global-set-key (kbd "䑄")      'capitalize-word-toggle)                     ;-'
(global-set-key (kbd "ሴ")       'capitalize-word-toggle)                   ;-RET
;------------------------------------------------------------------------------;

;; annoy myself into using C-f/C-q
(global-set-key (kbd "<C-left>") nil)
(global-set-key (kbd "<C-right>") nil)

(global-set-key (kbd "M-<tab>") (lambi (benjamin/notify "H-t plz tyvm")))	   ;
(global-set-key (kbd "C-S-<backspace>") 'delete-other-windows)
(global-set-key      (kbd "<H-return>") 'dropdown-multiterm)
(global-set-key    (kbd "<H-M-return>") 'dropdown-multiterm-right)
(global-set-key   (kbd "<H-backspace>") 'murder-buffer-with-window)
(global-set-key      (kbd "C-<return>") 'open-line-below)
(global-set-key      (kbd "<C-f11>")    'switch-to-buffer)
;------------------------------------------------------------------------------;

(global-set-key     (kbd "C-0")     'switch-to-buffer)
(global-set-key     (kbd "H-0")      nil)
(global-set-key     (kbd "H-3")     'nav-mode)

(global-set-key      (kbd "C-q")    'backward-to-word)
(global-set-key      (kbd "s-q")    'quoted-insert)
(global-set-key      (kbd "M-q")    'left-word)
;; (global-set-key (kbd "C-S-q") 'fill-paragraph)
(global-set-key    (kbd "C-S-q")    (lambi (set-mark-if-inactive)
                                           (forward-to-word -1)))
(global-set-key    (kbd "C-x q")    'query-replace)
(global-set-key    (kbd "M-s q")    'vr/query-replace)
(global-set-key  (kbd "M-s M-q")    'vr/replace)
(global-set-key        (kbd "Ŀ")    "\\")                                      ;

(global-set-key     (kbd "s-w")      nil)
(global-set-key     (kbd "C-w")     'kill-region-or-line)
(global-set-key     (kbd "H-w")     'kill-region)
(global-set-key     (kbd "s-w")      nil)                                    ;;;
(global-set-key     (kbd "M-w")     'kill-ring-save)
(global-set-key   (kbd "H-M-w")     'find-file-other-window)
(global-set-key   (kbd "C-S-w")     'my-i3-make-frame)                         ;
(global-set-key   (kbd "C-c w")     'woman)
(global-set-key (kbd "C-x M-w")     'copy-current-file-path)
(global-set-key   (kbd "C-x W")     'copy-current-dir-path)
(global-set-key (kbd "M-s M-w")     'rotate-windows)
(global-set-key    (kbd "C-\\")     'undo-tree-redo)                       ;-C-w
                          ;-w        \

(global-set-key     (kbd "C-e")     'end-of-line-or-block)
(global-set-key     (kbd "C-s-e")     'end-of-defun)
(global-set-key     (kbd "H-e")     "qe")
(global-set-key     (kbd "M-e")     'forward-whitespace)
(global-set-key     (kbd "M-E")     (lambi (set-mark-if-inactive)
                                           (forward-whitespace 1)))
(global-set-key   (kbd "C-S-e")     (lambi (set-mark-if-inactive)
                                           (call-interactively
                                            'end-of-line-or-block)))
(global-set-key   (kbd "H-M-e")     'replace-last-sexp)
(global-set-key   (kbd "C-M-e")     'elpy-nav-indent-shift-right)
(global-set-key   (kbd "C-x e")     'simplified-end-of-buffer)
(global-set-key   (kbd "M-s e")     'hydra-eval/body)
(global-set-key   (kbd "C-c e")     'hydra-ediff/body)
(global-set-key     (kbd "C-|")      nil)                                      ;
                          ;-e        |

(global-set-key       (kbd "s-r")    nil)
(global-set-key       (kbd "M-r")   'backward-kill-word)
(global-set-key       (kbd "C-r")   'backward-delete-char)
(global-set-key       (kbd "H-r")   'kill-symbol-at-point)
(global-set-key     (kbd "C-S-r")   'hungry-delete-backward)
(global-set-key     (kbd "H-M-r")   'kill-sexp-at-point)
(global-set-key   (kbd "M-s   r")   'benjamin/rec-grep)
(global-set-key   (kbd "M-s M-r")   'benjamin/rec-grep-with-case)
(global-set-key   (kbd "M-s H-r")   'counsel-rg)
(global-set-key   (kbd "M-s C-r")   'counsel-git-grep)
(global-set-key     (kbd "C-x r")   'grep)
(global-set-key     (kbd "C-H-r")   'counsel-projectile-rg)                    ;
(global-set-key   (kbd "C-x C-r")   (lambi (revert-buffer nil t)))
(global-set-key (kbd "C-x C-S-r")   'rename-current-buffer-file)
(global-set-key   (kbd "C-x M-r")   'rename-buffer)
                            ;-r      [

(global-set-key     (kbd "s-t")   'transpose-chars)                          ;;;
(global-set-key     (kbd "C-t")    ctl-x-map)
(global-set-key     (kbd "H-t")   'mc/mark-next-like-this)
(global-set-key     (kbd "M-t")   'transpose-words)
(global-set-key   (kbd "C-M-t")   (lambi (transpose-words -1)))
(global-set-key   (kbd "C-s-t")   'counsel-term-switch)
(global-set-key   (kbd "H-M-t")   'multi-term-prev)
(global-set-key (kbd "C-x C-t")   'multi-term-w/error-handling)
(global-set-key (kbd "C-x   t")   'multi-term-prev)                            ;
(global-set-key   (kbd "M-s t")   'vr/mc-mark)
(global-set-key   (kbd "M-s M-t") 'hydra-toggle/body)
(global-set-key   (kbd "C-c t")   'transpose-params)
(global-set-key   (kbd "C-S-t")   'capitalize-word-toggle)
                          ;-t      ~

(global-set-key     (kbd "C-y")   'yank)
(global-set-key     (kbd "M-y")   'counsel-yank-pop)
(global-set-key     (kbd "H-y")    nil)                                      ;;;
(global-set-key     (kbd "s-y")    nil)                                      ;;;
(global-set-key   (kbd "C-S-y")   (lambi (yank) (exchange-point-and-mark)))    ;
(global-set-key   (kbd "C-x y")   'bury-buffer)
(global-set-key   (kbd "H-M-y")   'bury-buffer)                                ;
(global-set-key       (kbd "υ")    nil)                                        ;

(global-set-key     (kbd "M-u")   'universal-argument)
(global-set-key     (kbd "C-u")   'kill-to-beginning-of-indentation-or-line)
(global-set-key     (kbd "H-u")   "qu")
(global-set-key      (kbd "s-u")  'quoted-insert)
(global-set-key   (kbd "C-S-u")   'upcase-word-toggle)
(global-set-key   (kbd "H-M-u")   'upcase-word-toggle)
(global-set-key   (kbd "C-s-u")   'upcase-word-toggle)
(global-set-key   (kbd "C-x u")   'undo-tree-visualize)
(global-set-key   (kbd "C-c u")   'unfill-paragraph)
(global-set-key   (kbd "M-s u")   'sudo-edit-current)
(global-set-key (kbd "M-s M-u")   'sudo-find-file)
(global-set-key       (kbd "ψ")   'universal-argument)

;; (global-set-key     (kbd "C-i")   'indent-or-complete)
(global-set-key     (kbd "H-i")   'yank)
(global-set-key     (kbd "H-I")   'counsel-yank-pop)
(global-set-key     (kbd "M-i")   'counsel-imenu)                            ;;;
(global-set-key     (kbd "s-i")    nil)
(global-set-key   (kbd "C-S-i")   'tab-to-tab-stop)
(global-set-key   (kbd "H-M-i")   'counsel-yank-pop)
(global-set-key   (kbd "C-M-i")   'benjamin/indent-a-bit-around-point)         ;
(global-set-key (kbd "M-s M-i")   'benjamin/indent-a-bit-around-point)
(global-set-key   (kbd "M-s i")   'iedit-mode)
(global-set-key   (kbd "C-x i")   'iedit-mode)                                 ;
(global-set-key   (kbd "C-c i")   'ivy-resume)
                          ;-i      *

(global-set-key     (kbd "C-o")   'smart-open-line-above)
(global-set-key     (kbd "M-o")   'other-window)
(global-set-key     (kbd "H-o")   'undo-tree-undo)                           ;;;
(global-set-key   (kbd "C-S-o")   'comment-or-uncomment-region-or-line)
(global-set-key   (kbd "C-s-o")   'switch-to-buffer)
(global-set-key   (kbd "H-M-o")   'projectile-find-other-file)
(global-set-key (kbd "M-s M-o")   'projectile-find-other-file-other-window)
(global-set-key   (kbd "C-x o")   'occur-dwim)
(global-set-key (kbd "C-x C-o")   'occur-dwim)
(global-set-key       (kbd "ӽ")    ";")

(global-set-key (kbd "C-p") nil)
(global-set-key (kbd "C-p C-p") 'helm-projectile)
(global-set-key (kbd "C-p !")   'projectile-run-async-shell-command-in-root)
(global-set-key (kbd "C-p C-f") 'projectile-find-file-in-known-projects)
(global-set-key (kbd "C-p G")   'ggtags-update-tags)
(global-set-key (kbd "C-p T")   'projectile-test-project)
(global-set-key (kbd "C-p C-t") 'projectile-test-project)
(global-set-key (kbd "C-p b")   'projectile-switch-to-buffer-other-window)
(global-set-key (kbd "C-p c")   'projectile-compile-project)
(global-set-key (kbd "C-p d")   'counsel-projectile-find-dir)
(global-set-key (kbd "C-p D")   'projectile-find-dir-other-window)
(global-set-key (kbd "C-p e")   'projectile-recentf)
(global-set-key (kbd "C-p E")   'projectile-edit-dir-locals)
(global-set-key (kbd "C-p f")   'projectile-find-file-other-window)
(global-set-key (kbd "C-p g")   'counsel-projectile-git-grep)
(global-set-key (kbd "C-p i")   'projectile-ibuffer)
(global-set-key (kbd "C-p j")   'projectile-find-tag)
(global-set-key (kbd "C-p k")   'projectile-kill-buffers)
(global-set-key (kbd "C-p m")   'projectile-multi-occur)
(global-set-key (kbd "C-p o")   'projectile-find-other-file)
(global-set-key (kbd "C-p p")   'helm-projectile)
(global-set-key (kbd "C-p R")   'projectile-replace)
(global-set-key (kbd "C-p r")   'counsel-projectile-rg)
(global-set-key (kbd "C-p s")   'counsel-projectile-switch-project)
(global-set-key (kbd "C-p t")   'projectile-get-term)
(global-set-key (kbd "C-p u")   'projectile-run-project)
(global-set-key (kbd "C-p x")   'projectile-remove-known-project)
(global-set-key (kbd "C-p X")   'projectile-cleanup-known-projects)
(global-set-key (kbd "C-p z")   'projectile-cache-current-file)

(global-set-key     (kbd "M-p")   'benjamin/pop-to-mark-command)
(global-set-key     (kbd "H-p")   'undo-tree-redo)                           ;;;
(global-set-key     (kbd "s-p")   'kill-paragraph)                             ;
(global-set-key     (kbd "s-P")   'backward-kill-paragraph)                    ;
(global-set-key   (kbd "C-S-p")   'fill-paragraph)
(global-set-key   (kbd "C-H-p")   'unfill-paragraph)
(global-set-key   (kbd "C-c p")   'mark-paragraph)
(global-set-key   (kbd "H-M-p")   'previous-error)
(global-set-key   (kbd "C-c Ps")  'profiler-start)
(global-set-key   (kbd "C-c Pr")  'profiler-report)
(global-set-key   (kbd "C-c Pt")  'profiler-stop)
(global-set-key   (kbd "C-c Pe")  'profiler-reset)
(global-set-key   (kbd "C-x p")   'first-error)

(global-set-key     (kbd "C-a")   'beginning-of-line-or-block)
(global-set-key     (kbd "C-s-a")   'beginning-of-defun)
(global-set-key     (kbd "H-a")   'ace-window)                               ;;;
(global-set-key     (kbd "M-a")   (lambi (forward-whitespace -1)))
(global-set-key     (kbd "M-A")   (lambi (set-mark-if-inactive)
                                         (forward-whitespace -1)))
(global-set-key   (kbd "C-S-a")   (lambi (set-mark-if-inactive)
                                         (call-interactively
                                          'beginning-of-line-or-block)))
(global-set-key   (kbd "C-M-a")   'elpy-nav-indent-shift-left)
(global-set-key   (kbd "C-x a")   'simplified-beginning-of-buffer)
(global-set-key   (kbd "C-c a")   'org-agenda)
(global-set-key (kbd "M-s M-a")   'org-capture)
(global-set-key (kbd "M-s   a")   'org-capture-goto-last-stored)
                          ;-a      /

(global-set-key     (kbd "s-s")    nil)
;; (global-set-key     (kbd "H-s")   (lambi (swiper (thing-at-point 'symbol))))
(global-set-key     (kbd "H-s")   'isearch-forward)
(global-set-key     (kbd "C-s")   'counsel-grep-or-swiper)
(global-set-key     (kbd "C-s")   'swiper)
(global-set-key   (kbd "C-S-s")   'swiper-all)
;; (global-set-key   (kbd "C-s-s")   'isearch-forward)
(global-set-key   (kbd "C-s-s")   'hydra-spotify/body)
(global-set-key   (kbd "C-x s")   'save-buffer)
(global-set-key   (kbd "M-s s")   'org-store-link)
(global-set-key   (kbd "H-M-s")   'paste-shell-stdout)
;; (global-set-key   (kbd "C-c sd")  (lambi (let ((helm-full-frame t))
;;                                            (helm-systemd))))
(global-set-key   (kbd "C-c s")   'counsel-grep-or-swiper)
(global-set-key (kbd "M-s M-s")   'save-buffer)
                          ;-s      _

(global-set-key     (kbd "C-d")   'delete-char)
(global-set-key     (kbd "H-d")    nil)                                  ;;;
(global-set-key     (kbd "M-d")   'kill-word)
(global-set-key   (kbd "C-S-d")   'hungry-delete-forward)
(global-set-key   (kbd "H-M-d")   'duplicate-current-line-or-region)
(global-set-key (kbd "M-s M-d")   'delete-window)
(global-set-key (kbd "M-s   d")    nil)                                    ;
(global-set-key   (kbd "C-x d")   'hydra-timestamp/body)
(global-set-key   (kbd "C-c d")   'mark-defun)
(global-set-key (kbd "C-M-H-d")   'benjamin/insert-dashes)
                          ;-d      :

(global-set-key     (kbd "s-f")    nil)
(global-set-key     (kbd "C-f")   'forward-to-word)
(global-set-key     (kbd "H-f")   'avy-goto-word-or-subword-1)
(global-set-key     (kbd "M-f")   'avy-goto-char-in-line)
;; (global-set-key   (kbd "C-s-f")   'helm-buffers-list)
(global-set-key   (kbd "C-S-f")   (lambi (set-mark-if-inactive)
                                         (forward-to-word 1)))
(global-set-key   (kbd "C-x f")   'hydra-flycheck/body)
(global-set-key   (kbd "C-M-f")   'forward-sexp)
(global-set-key   (kbd "H-M-f")   'find-file-at-point)
(global-set-key (kbd "M-s M-f")   'find-file)
(global-set-key     (kbd "C-(")   (lambi (fastnav-search-char-forward 1 ?\( )))
(global-set-key     (kbd "C-)")   (lambi (fastnav-search-char-forward 1 ?\) )))
                          ;-f      (

(global-set-key     (kbd "s-g")    nil)
(global-set-key     (kbd "H-g")   'dropdown-multiterm-prev)
(global-set-key     (kbd "M-g")   'goto-line-with-feedback)
(global-set-key   (kbd "C-s-g")   'keyboard-quit)
(global-set-key   (kbd "C-M-g")   'avy-goto-line)
(global-set-key   (kbd "H-M-g")   'avy-goto-line)
(global-set-key   (kbd "C-S-g")   'hydra-git/body)                             ;
(global-set-key (kbd "M-s   g")   'hydra-git/body)
(global-set-key (kbd "M-s M-g")   'magit-status)
(global-set-key   (kbd "C-x g")    nil)
(global-set-key   (kbd "C-c g")   'helm-google)
                          ;-g      ?

(global-set-key     (kbd "C-h")   'backward-char)
(global-set-key     (kbd "H-h")    help-map)
(global-set-key     (kbd "M-h")   'hs-toggle-hiding)
(global-set-key   (kbd "H-M-h")   'benjamin/highlight)                         ;
(global-set-key   (kbd "H-M-H")   'benjamin/unhighlight-region)                ;
(global-set-key   (kbd "C-S-h")   (lambi (set-mark-if-inactive) (forward-char -1)))
(global-set-key   (kbd "C-x h")    help-map)
(global-set-key   (kbd "C-c h")   'hs-hide-all)
(global-set-key   (kbd "C-c H")   'hs-show-all)
(global-set-key   (kbd "H-h u")   'counsel-unicode-char)
(global-set-key   (kbd "H-h b")   'counsel-descbinds)
                          ;-h     {

(global-set-key     (kbd "s-j")    nil)
(global-set-key     (kbd "C-j")   'next-line)
(global-set-key     (kbd "H-j")   'yank-pop)
(global-set-key     (kbd "M-j")   'hippie-expand)							   ;
(global-set-key   (kbd "C-s-j")   (lambi (scroll-up 5)))
(global-set-key   (kbd "C-S-j")   (lambi (set-mark-if-inactive) (forward-line 1)))
(global-set-key   (kbd "C-M-j")   'move-text-down)
(global-set-key   (kbd "C-x j")   'dired-jump)

(global-set-key (kbd "M-s M-j")   'slack-channel-select)
(global-set-key    (kbd "C-\"")   (lambi (fastnav-search-char-forward 1 ?\" )))
                          ;-j     "

(global-set-key     (kbd "s-k")    nil)
(global-set-key     (kbd "C-k")   'previous-line)
(global-set-key     (kbd "H-k")   'kill-inner)
(global-set-key     (kbd "M-k")   'kill-line-save)
(global-set-key   (kbd "C-M-k")   'move-text-up)
(global-set-key   (kbd "C-S-k")   (lambi (set-mark-if-inactive)
                                         (forward-line -1)))
(global-set-key   (kbd "C-s-k")   (lambi (scroll-up -5)))
(global-set-key   (kbd "H-M-k")   'volatile-kill-buffer)
(global-set-key   (kbd "C-c k")   'kconfig-option-at-point-projectile-root)
(global-set-key   (kbd "C-x k")   'volatile-kill-buffer)                       ;
                          ;-k      '                                         ;;;

(global-set-key     (kbd "s-l")    nil)
(global-set-key     (kbd "C-l")   'forward-char)
(global-set-key     (kbd "H-l")   'recenter-top-bottom)
(global-set-key     (kbd "M-l")   'goto-last-change)
(global-set-key   (kbd "H-M-l")   'goto-last-change-reverse)
(global-set-key   (kbd "C-S-l")   (lambi (set-mark-if-inactive)
                                         (forward-char 1)))
(global-set-key   (kbd "C-s-l")    nil)
(global-set-key   (kbd "C-x l")   'counsel-locate)
(global-set-key   (kbd "M-s l")   'counsel-locate)
(global-set-key (kbd "M-s M-l")   'org-store-link)
                          ;-l      +

(global-set-key     (kbd "C-z")   'capitalize-word-toggle)
(global-set-key     (kbd "M-z")   'kill-line-save)                             ;
                          ;-z     nil                                        ;;;

(global-set-key     (kbd "M-x")   'counsel-M-x)
(global-set-key       (kbd "χ")    nil)                                        ;

(global-set-key     (kbd "M-c")   'hydra-gdb/body)
(global-set-key     (kbd "H-c")   'compile)                                  ;;;
(global-set-key     (kbd "s-c")    nil)                                      ;;;
(global-set-key   (kbd "C-S-c")   'comment-or-uncomment-region-or-line)        ;
(global-set-key   (kbd "H-M-c")    nil)                                        ;
(global-set-key (kbd "M-s M-c")   'projectile-compile-project)                 ;
(global-set-key (kbd "C-M-H-c")   'benjamin/insert-c-doc)

(global-set-key   (kbd "C-c c")   'calc)
(global-set-key  (kbd "C-x cc")   'helm-colors)
(global-set-key       (kbd "σ")   'capitalize-word-toggle)                   ;-c
(define-key prog-mode-map (kbd "C-c C-c")   'compile)


(global-set-key     (kbd "M-v")   'hydra-vimish-fold/body)                   ;;;
(global-set-key     (kbd "H-v")   (lambi (forward-line -30)))                ;;;
;; (global-set-key     (kbd "s-v")   'counsel-yank-pop)                           ;
(global-set-key     (kbd "C-v")   (lambi (forward-line 30)))
(global-set-key   (kbd "C-S-v")   (lambi (forward-line -30)))
(global-set-key   (kbd "C-c v")   nil)                                         ;
                          ;-v     ; (semicolon)

(global-set-key     (kbd "M-b")   'previous-error)                             ;
(global-set-key     (kbd "H-b")   'switch-to-buffer-other-window)              ;
(global-set-key     (kbd "C-b")   'counsel-bookmark)
(global-set-key   (kbd "H-M-b")   'switch-to-buffer-other-window)              ;
(global-set-key   (kbd "C-S-b")   'counsel-bookmark-current-buffer-file)
(global-set-key   (kbd "C-c b")   'create-scratch-buffer)
(global-set-key   (kbd "C-x b")   'browse-url)
(global-set-key   (kbd "M-s b")   'helm-chrome-bookmarks)
                          ;-b      ` (backtick)

(global-set-key     (kbd "C-n")   'mark-line)
(global-set-key     (kbd "H-n")   'goto-next-line-with-same-indentation)     ;;;
(global-set-key     (kbd "M-n")   'next-error)                                 ;
(global-set-key   (kbd "C-S-n")   'lispy-forward)                            ;;;
(global-set-key   (kbd "H-M-n")   'multi-term-next)
(global-set-key   (kbd "C-x n")   'narrow-to-region)
(global-set-key (kbd "C-x C-n")   'widen)
(global-set-key       (kbd "ν")   "&")                                       ;;;

(global-set-key     (kbd "M-m")   'counsel-mark-ring)
(global-set-key     (kbd "s-m")   'helm-man-woman)
(global-set-key     (kbd "H-m")   'hydra-toggle/body)                        ;;;
(global-set-key   (kbd "C-S-m")   'mark-line)
(global-set-key   (kbd "C-c m")   'helm-global-mark-ring)
(global-set-key (kbd "C-c RET")   'helm-global-mark-ring)
(global-set-key   (kbd "M-s m")   'kmacro-start-macro)
(global-set-key (kbd "M-s M-m")   'kmacro-end-macro)
(global-set-key   (kbd "H-M-m")   'kmacro-call-macro)
(global-set-key       (kbd "μ")   "$")                                       ;;;

(global-set-key (kbd "C-,")     'hydra-magit/body)

(global-set-key (kbd "H-,")     'goto-prev-line-with-same-indentation)		 ;;;
(global-set-key (kbd "H-.")     'goto-next-line-with-same-indentation)		 ;;;
(global-set-key (kbd "C-.")     'exchange-point-and-mark)
(global-set-key (kbd "C->")     (lambi (forward-line 40)))
(global-set-key (kbd "C-<")     (lambi (forward-line -40)))

(global-set-key (kbd "C--")     'benjamin/previous-buffer)
(global-set-key (kbd "C-=")     'benjamin/next-buffer)
(global-set-key (kbd "C-_")     'zoom-frm-out)
(global-set-key (kbd "C-+")     'zoom-frm-in)
(global-set-key (kbd "M--")     (lambi (shrink-window 5)))
(global-set-key (kbd "M-=")     (lambi (enlarge-window 5)))
(global-set-key (kbd "H--")     'my-decrement-number-decimal)
(global-set-key (kbd "H-=")     'my-increment-number-decimal)

;; misc mode mappings
(define-key help-mode-map (kbd "q")   'murder-buffer-with-window)

(load-file "~/.emacs.d/private-bindings.el")
