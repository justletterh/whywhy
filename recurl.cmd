@echo off
rem this file just resets the pesky dll's dir so that you can rerun run.cmd to recurl it in case something went wrong
if not exist ".\bin\julia\lib\julia\" mkdir .\bin\julia\lib\julia
if exist ".\bin\julia\lib\julia\h.txt" del .\bin\julia\lib\julia\h.txt
if exist ".\bin\julia\lib\julia\sys.dll" del .\bin\julia\lib\julia\sys.dll
if not exist ".\bin\julia\lib\julia\h.txt" call .\bin\touch .\bin\julia\lib\julia\h.txt&&echo h > .\bin\julia\lib\julia\h.txt
if not exist ".\bin\julia\lib\julia\sys.dll" if exist ".\bin\julia\lib\julia\h.txt" echo Done!!!