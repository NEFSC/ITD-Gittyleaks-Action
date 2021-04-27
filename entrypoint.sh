#!/bin/sh

cd /github/workspace/ 

echo gittyleaks --find-anything --verbose --no-banner

CAPTURE_OUTPUT=$(gittyleaks --find-anything --verbose --no-banner)

if [ $? -eq 1 ]
then
  GITTYLEAKS_RESULT=$(echo -e "\e[31m🛑 STOP! gittyleaks encountered leaks")
  echo "$GITTYLEAKS_RESULT"
  echo "::set-output name=exitcode::$GITTYLEAKS_RESULT"
  echo "----------------------------------"
  echo "$CAPTURE_OUTPUT"
  echo "::set-output name=result::$CAPTURE_OUTPUT"
  echo "----------------------------------"
  exit 1
else
  GITTYLEAKS_RESULT=$(echo -e "\e[32m✅ SUCCESS! Your code is good to go!")
  echo "$GITTYLEAKS_RESULT"
  echo "::set-output name=exitcode::$GITTYLEAKS_RESULT"
  echo "------------------------------------"
fi
# if result = 'No matches.' ; then
#  echo "Game over!"
#  exit 1
# fi
