#!/usr/bin/env python3.1

# by Jang Rush <weakish@gmail.com>
# under 0BSD

# omit repeated lines, 
# i.e. 'sort | uniq' or 'sort -u' without reordering. 

# I want to be unique,
# not sort of unique.
# I only want you,
# not sort of you.


import functools
import sys

uniq = lambda uniq_lines, line: uniq_lines if line in uniq_lines else uniq_lines + (line,)

uniq_lines = lambda lines: functools.reduce(uniq, lines, ())

main = lambda: print('\n'.join(uniq_lines(sys.stdin.read().split('\n'))))

__name__ == '__main__' and main()
