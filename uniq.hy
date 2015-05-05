#!/usr/bin/env hy

; by Jakukyo Friel <weakish@gmail.com> (https://weakish.github.io)
; under MIT

; Read lines from stdin and write to stdout without repeated lines.
; i.e. 'sort | uniq' or 'sort -u' without reordering.

; I want to be unique,
; not sort of unique.
; I only want u,
; not sort of u.

(defmain [&rest args]
  (setv uniq-lines (-> (.read sys.stdin) (.split "\n") distinct))
  (for [line uniq-lines] (print line)))
