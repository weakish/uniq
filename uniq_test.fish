#!/usr/bin/env fish

for i in uniq.*
  for f in *
    diff (python3 uniq.py <$f | psub) (./$i <$f | psub)
  end
end
