@echo off
SET /P _title="Title:"
SET /P _difficulty="Difficulty:"
SET /P M="Do you want to set tag? (y/n)"
IF %M%==y GOTO TAG
IF %M%==n GOTO SKIP
:TAG
SET /P M="Do you want to enable trail? (y/n)"
IF %M%==y GOTO TAGTRAIL
IF %M%==n GOTO SKIPTAGTRAIL
:SKIPTAGTRAIL
SET /P _tagnumber="Tag number:"
danser-0.4.1b.exe -t="%_title%" -d="%_difficulty%" -tag %_tagnumber% -settings=tag
exit
:TAGTRAIL
SET /P _tagnumber="Tag number:"
danser-0.4.1b.exe -t="%_title%" -d="%_difficulty%" -tag %_tagnumber% -settings=tag-trail
exit
:SKIP
SET /P M="Do you want to enable trail? (y/n)"
IF %M%==y GOTO TRAIL
IF %M%==n GOTO SKIPTRAIL
:SKIPTRAIL
danser-0.4.1b.exe -t="%_title%" -d="%_difficulty%"
exit
:TRAIL
danser-0.4.1b.exe -t="%_title%" -d="%_difficulty%" -settings=trail
exit