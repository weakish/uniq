#!/usr/bin/env coffee

# by Jang Rush <weakish@gmail.com>
# under 0BSD

# omit repeated lines, 
# i.e. 'sort | uniq' or 'sort -u' without reordering. 

# I want to be unique,
# not sort of unique.
# I only want you,
# not sort of you.

lodash = require 'lodash'


lines = ''
process.stdin.setEncoding('utf8')
process.stdin.on('readable', (chunk) ->
  chunk = process.stdin.read()
  lines = lines + chunk.toString() unless chunk is null
)

process.stdin.on('end', () ->
  process.stdout.write(lodash.uniq(lines.split("\n")).join("\n"))
)
  
