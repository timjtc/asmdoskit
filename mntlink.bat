@echo off

:start
if exist mnt_link rmdir mnt_link
set /p "dirlink=Enter path to link: "

if [%dirlink%] == [] goto noarg

mklink /J mnt_link %dirlink%
if errorlevel 1 goto err1
goto end

:noarg
echo No input given. Please provide a directory to link.
goto start

:err1
echo Error creating link. Please check the directory path and try again.
pause
goto end

:end