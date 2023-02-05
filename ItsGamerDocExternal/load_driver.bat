@echo off
net session >nul 2>&1
if %errorLevel% == 0 (
    cd %~dp0
    driver\gdrvloader.exe driver\BuzzerEzzerKernel.sys
    pause
) else (
    echo Failure: Please run as admin.
    pause
)