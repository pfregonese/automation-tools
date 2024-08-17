@echo off

echo Clearing temporary files...

rem Clear temporary files in the user's temporary folder
del /q "%TEMP%\*.*"

rem Clear temporary files in the Windows temporary folder
del /q "%SystemRoot%\Temp\*.*"

echo Temporary files cleared successfully.

exit
