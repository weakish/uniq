#!/usr/bin/env hy

; by Jang Rush <weakish@gmail.com>
; under 0BSD

; Read lines from stdin and write to stdout without repeated lines.
; i.e. 'sort | uniq' or 'sort -u' without reordering.

; I want to be unique,
; not sort of unique.
; I only want u,
; not sort of u.

(defmain [&rest args]
  (setv uniq-lines (-> (.read sys.stdin) (.split "\n") distinct))
  (for [line uniq-lines] (print line)))
