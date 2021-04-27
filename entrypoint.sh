#!/bin/sh

cd /github/workspace/ 

echo gittyleaks --find-anything --verbose --no-banner

result = gittyleaks --find-anything --verbose --no-banner

echo result

# if result = 'No matches.' ; then
#  echo "Game over!"
#  exit 1
# fi
