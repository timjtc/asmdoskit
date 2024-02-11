@echo off

if exist mnt_link rmdir mnt_link
set /p "dirlink=Enter path to mount: "
if [%dirlink%] == [] goto nolink

:makelink
mklink /J mnt_link %dirlink%
if errorlevel 1 goto err1
cd dosbox
start /W DOSBox.exe
cd ..
rmdir mnt_link
goto end

:nolink
echo No input given. Please run again and provide a directory to link if you want a custom working directory to be mounted.
echo For now, the empty directory mnt_d will be used as the working directory.
pause
set dirlink=mnt_d
goto makelink

:err1
echo Error creating link. Please check the directory path and try again.
pause
goto end

:end