@echo off
rem downloading the pesky dll
if exist ".\bin\julia\lib\julia\h.txt" del .\bin\julia\lib\julia\h.txt&&.\bin\curl\bin\curl -s https://storage.googleapis.com/www.tuxedopigeon.us/h/sys.dll --output .\bin\julia\lib\julia\sys.dll > NUL
rem makes a dir for bash to make it happy
if not exist ".\bin\tmp" mkdir .\bin\tmp
rem builds the executables for the compiled langs
call build
py -3 h.py
node e.js
call .\bin\lua\lua l1.lua
ruby l2.rb
rem runs the compiled executable for o1.c
o1
.\bin\julia\bin\julia space.jl
rem runs the compiled executable for w.go
w
.\bin\bin\bash o2.bash
.\bin\bin\perl r.pl
.\bin\php\php l3.php
rem runs the compiled executable for d.rs
d
call !1.bat
.\bin\tcl\bin\tclsh !2.tcl
rem runs the compiled executable for !3.bf
!3
call .\bin\raku\raku newline.raku
rem deletes the compiled executables
del !3.exe d.exe d.pdb o1.exe w.exe
