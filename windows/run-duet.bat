@echo off
SET /P _title="Title:"
SET /P _difficulty="Difficulty:"
SET /P M="Do you want to enable trail? (y/n)"
IF %M%==y GOTO TRAIL
IF %M%==n GOTO SKIPTRAIL
:SKIPTRAIL
danser-0.4.1b.exe -t="%_title%" -d="%_difficulty%" -tag 2 -settings=duet
exit
:TRAIL
danser-0.4.1b.exe -t="%_title%" -d="%_difficulty%" -tag 2 -settings=duet-trail
exit