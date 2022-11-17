;;; Directory Local Variables            -*- no-byte-compile: t -*-
;;; For more information see (info "(emacs) Directory Variables")

((org-mode . ((eval . (org-link-set-parameters
                       "https-rel-me"
                       :follow (org-link-get-parameter "https" :follow)
                       :export
                       (lambda (path description _ _)
                         (let* ((link (format "https:%s" path))
                                (desc (or description link)))
                           (format "<a href=\"%s\" rel=\"me\">%s</a>" link desc)))))
              eval . (visual-fill-column-mode -1))))
