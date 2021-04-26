#!/bin/sh

cd /github/workspace/ 

result = gittyleaks --find-anything --verbose --no-banner

if result = 'No matches.' ; then
  echo "Game over!"
  exit 1
fi
