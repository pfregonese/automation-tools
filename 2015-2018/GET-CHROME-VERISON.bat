@ECHO OFF

FOR %%A IN (
    {8A69D345-D564-463c-AFF1-A69D9E530F96},
    {8237E44A-0054-442C-B6B6-EA0509993955},
    {401C381F-E0DE-4B85-8BD8-3F3F14FBDA57}) DO (
  reg query HKLM\Software\Google\Update\Clients\%%A /v name /reg:32 2> NUL
  reg query HKLM\Software\Google\Update\Clients\%%A /v opv /reg:32 2> NUL
  reg query HKLM\Software\Google\Update\Clients\%%A /v pv /reg:32 2> NUL
)

FOR %%A IN (
    {8A69D345-D564-463c-AFF1-A69D9E530F96},
    {8237E44A-0054-442C-B6B6-EA0509993955},
    {401C381F-E0DE-4B85-8BD8-3F3F14FBDA57},
    {4ea16ac7-fd5a-47c3-875b-dbf4a2008c20}) DO (
  reg query HKCU\Software\Google\Update\Clients\%%A /v name /reg:32 2> NUL
  reg query HKCU\Software\Google\Update\Clients\%%A /v opv /reg:32 2> NUL
  reg query HKCU\Software\Google\Update\Clients\%%A /v pv /reg:32 2> NUL
)