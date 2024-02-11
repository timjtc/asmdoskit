echo off
cls

if [%1] == [] goto noarg

tasm %1
if errorlevel 1 goto end

tlink %1 /t
if errorlevel 1 goto end

cls
%1
echo.
goto end

:noarg
echo No argument given.

:end