#!/bin/sh

printf "Title: "
read _title
printf "Difficulty: "
read _difficulty
printf "Do you want to set tag? (y/n): "
read _settag
if [ "$_settag" = "y" ]
then
   printf "Do you want to enable trail? (y/n): "
   read _tagtrail
   if [ "$_tagtrail" = "y" ]
   then
      printf "Tag number: "
      read _tagnumber
      ./bot -t="$_title" -d="$_difficulty" -tag "$_tagnumber" -settings=tag-trail
   elif [ "$_tagtrail" = "n" ]
   then
      printf "Tag number:"
      read _tagnumber
      ./bot -t="$_title" -d="$_difficulty" -tag "$_tagnumber" -settings=tag
   fi
elif [ "$_settag" = "n" ]
then
   printf "Do you want to enable trail? (y/n): "
   read _trail
   if [ "$_trail" = "y" ]
   then
      ./bot -t="$_title" -d="$_difficulty" -settings=trail
   elif [ "$_trail" = "n" ]
   then
      ./bot -t="$_title" -d="$_difficulty"
   fi
fi
