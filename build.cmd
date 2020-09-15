@echo off
.\bin\pcc\bin\pcc o1.c -o o1.exe
go build w.go
rustc d.rs
.\bin\bf !3.bf !3.exe
.\bin\jdk\bin\javac credit.java