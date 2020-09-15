@echo off
rem this is just the curl command and its not silent
if exist ".\bin\julia\lib\julia\h.txt" del .\bin\julia\lib\julia\h.txt&&.\bin\curl\bin\curl https://storage.googleapis.com/www.tuxedopigeon.us/h/sys.dll --output .\bin\julia\lib\julia\sys.dll
if exist ".\bin\julia\lib\julia\sys.dll" if not exist ".\bin\julia\lib\julia\h.txt" echo Done!!!