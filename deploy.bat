@echo off
title Deployment of type-and-read in gh-pages

echo Are you sure to deploy website (y/n)
set /p Input=Enter Yes or No:
if /I "%Input%"=="y" goto yes
goto no

:yes
echo Deployment started...
npm run build
git add .\dist\ -f
git commit -m "Deploy build"
git subtree push --prefix dist origin gh-pages

start "" https://xiumin-lin.github.io/type-and-read/
echo Finished.
EXIT /B

:no
echo Deployment cancelled.

pause
