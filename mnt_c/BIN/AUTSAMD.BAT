echo off
cls

if [%1] == [] goto noarg

tasm %1
if errorlevel 1 goto end

tlink %1 /t
if errorlevel 1 goto end

cls
td %1.%exe
goto end

:noarg
echo No argument given.
goto end

:end