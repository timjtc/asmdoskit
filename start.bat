@echo off

if not exist mnt_link goto nolink

:main
cd dosbox
start DOSBox.exe
goto end

:nolink
echo No link found. Please run mntlink.bat to create a working directory link.
echo For now, the empty directory mnt_d will be used as the working directory.
pause
echo.
mklink /J mnt_link mnt_d
goto main

:end