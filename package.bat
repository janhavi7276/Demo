@echo off
echo Packaging...
if not exist dist mkdir dist
echo build output > dist\app.txt
exit /b 0
