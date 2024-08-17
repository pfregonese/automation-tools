@echo off
setlocal

REM Run winget to check for available updates
winget upgrade --all

REM Check the exit code to determine if any updates were found
if %errorlevel% equ 0 (
    echo No updates found.
) else (
    echo Updates found. Installing...
    winget upgrade --all --silent
)

endlocal
