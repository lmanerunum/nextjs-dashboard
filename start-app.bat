@echo off

REM Change to the directory where this batch file resides
cd /d "%~dp0"

REM Open PowerShell and run pnpm dev
start "Next.js Dev Server" powershell.exe -NoExit -Command "pnpm dev"

REM Give the dev server a few seconds to start
timeout /t 5 /nobreak >nul

REM Open Chrome to localhost
start chrome "http://localhost:3000"