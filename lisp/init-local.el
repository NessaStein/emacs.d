;; customize my habbit
(setq-default blink-cursor-mode t)
(setq-default menu-bar-mode nil)
(setq-default auto-save-default nil)

;; org-publish site
(require 'ox-publish)
(setq org-html-coding-system 'utf-8-unix)

(
 setq org-publish-project-alist
      '(

        ("org-notes"
         :base-directory "~/org-file/"
         :base-extension "org"
         :publishing-directory "~/public_html/"
         :recursive t
         ;; :exclude ".*-reveal\.org"        ; exclude org-reveal slides
         :publishing-function org-html-publish-to-html
         :headline-levels 2               ; Just the default for this project.
         :auto-sitemap t                  ; Generate sitemap.org automagically...
         :sitemap-filename "sitemap.org"  ; ... call it sitemap.org (it's the default)...
         :sitemap-title "Sitemap"         ; ... with title 'Sitemap'.
         :with-creator nil    ; Disable the inclusion of "Created by Org" in the postamble.
         :with-email "707624376@qq.com"      ; Disable the inclusion of "(your email)" in the postamble.
         :with-author "Rory"       ; Enable the inclusion of "Author: Your Name" in the postamble.
         :auto-preamble t;         ; Enable auto preamble
         :auto-postamble t         ; Enable auto postamble
         :table-of-contents t        ; Set this to "t" if you want a table of contents, set to "nil" disables TOC.
         :toc-levels 2               ; Just the default for this project.
         :section-numbers nil        ; Set this to "t" if you want headings to have numbers.
         :html-head-include-default-style nil ;Disable the default css style
         :html-head-include-scripts nil ;Disable the default javascript snippet
         :html-head "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n<link rel=\"stylesheet\" type=\"text/css\" href=\"http://www.i3s.unice.fr/~malapert/css/worg.min.css\"/>\n<script type=\"text/javascript\" src=\"http://www.i3s.unice.fr/~malapert/js/ga.min.js\"></script>" ;Enable custom css style and other tags
         :html-link-home "index.html"    ; Just the default for this project.
         :html-link-up "../index.html"    ; Just the default for this project.
         )

        ("html-static"
         :base-directory "~/org-file/"
         :base-extension "html\\|xml\\|css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|zip\\|gz\\|csv\\|m"
         ;; :include (".htaccess")
         :publishing-directory "~/public_html/"
         :recursive t
         :publishing-function org-publish-attachment
         )

        ("org"
         :components ("org-notes" "html-static")
         )

        )
      )


(provide 'init-local)
