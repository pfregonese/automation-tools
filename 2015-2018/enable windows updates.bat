# enables auto updates. -P.F 7/26/2029
# should resolve most win10 update issues. Make it automatic.
sc config wuauserv start= auto
sc config bits start= auto
sc config DcomLaunch start= auto
net start wuauserv
net start bits
net start DcomLaunch
gpupdate /force