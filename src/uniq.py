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

def uniq(uniqlines, line):
  '''
  >>> uniq((), 1)
  (1,)
  >>> uniq((1,), 2)
  (1, 2)
  >>> uniq((1, 2), 2)
  (1, 2)
  '''
  return uniqlines if line in uniqlines else uniqlines + (line,)

def uniq_lines(lines):
  '''
  >>> tuple(uniq_lines((3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7, 9, 3)))
  (3, 1, 4, 5, 9, 2, 6, 8, 7)
  '''
  return functools.reduce(uniq, lines, ())

def unit_test():
  import doctest
  doctest.testmod()


def main():
  import sys
  unit_test()
  print('\n'.join(uniq_lines(sys.stdin.read().split('\n'))))

if __name__ == '__main__':
  main()
