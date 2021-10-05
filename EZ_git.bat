@echo off
title EZ Github uploader (CMD interface)

:start
color a
cls
echo.
echo Welcome to EZ Github uploader;
echo Press X incase Git isn't installed yet, otherwise press C.
echo.
set /p launcher=option: 
if %launcher% equ X goto installGit
if %launcher% equ C goto continueToUpload
if %launcher% neq X goto :start

:continueToUpload
cls
echo.
echo Enter necassery arguments below.
echo.
set /p files=Files: 
set /p commit=Commit: 
set /p link=Repository: 
set /p branch=Branch: 
PAUSE


:installGit
cls
echo.
echo Install git before continuing!
echo.
PAUSE
goto :start

:uploadToGithub
title UPLOADING TO GITHUB...
cls
echo.
git init
git add 
