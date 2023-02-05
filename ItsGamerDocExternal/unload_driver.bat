@echo off
net session >nul 2>&1
if %errorLevel% == 0 (
    cd %~dp0
    driver\gdrvloader.exe driver\BuzzerEzzerKernel.sys -unload
    pause
) else (
    echo Failure: Please run as admin.
    pause
)