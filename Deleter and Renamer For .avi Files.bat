@echo off
title Deleter and Renamer For .avi Files
:start
cls
echo  Do you want to delete or rename the newest file.
set /p yena=?
if %yena% == r goto rename
if %yena% == d goto del
if %yena% == c exit
if %yena% == l goto start
:rename
cls
for /f "tokens=*" %%i in ('dir /b /a-d /od /t:c "*.avi"') do (
  set LastFileCreated="%%i"
)
echo what would you like to rename %LastFileCreated% to?
set /p rename=?
ren %LastFileCreated% %rename%".avi"
goto start
:del
cls
for /f "tokens=*" %%i in ('dir /b /a-d /od /t:c "*.avi"') do (
  set LastFileCreated="%%i"
)
del %LastFileCreated%
goto start