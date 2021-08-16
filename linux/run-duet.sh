#!/bin/sh

printf "Title: "
read _title
printf "Difficulty: "
read _difficulty
printf "Do you want to enable trail? (y/n): "
read _settrail
if [ "$_settrail" = "y" ]
then
   ./bot -t="$_title" -d="$_difficulty" -tag 2 -settings=duet-trail
elif [ "$_settrail" = "n" ]
then
   ./bot -t="$_title" -d="$_difficulty" -tag 2 -settings=duet
fi
