@echo off
echo Stopping Windows Time service...
net stop w32time

echo Syncing with time server...
w32tm /config /manualpeerlist:"time.windows.com,0x1" /syncfromflags:manual /reliable:YES /update

echo Starting Windows Time service...
net start w32time

echo Forcing synchronization...
w32tm /resync

echo Done.
pause
