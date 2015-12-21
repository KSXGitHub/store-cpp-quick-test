@echo off
cd /d "%~dp0"
cd ..
set include=../../include
set prime=../../prime
echo Compiling...
make
rem clang++ -Wall -Wextra -I%include% -I%prime% -std=c++11 -m32 -o main main.cpp
rem -mwindows flag
rem -lglut flag
if %errorlevel% neq 0 goto failed
echo Compiling Successfull.
goto final
:failed
echo Compiling failed.
:final
echo Exit code: %errorlevel%.
rem ask-for-running main
rem echo Synchronizing...
rem ..\__sync.cmd "%0"
