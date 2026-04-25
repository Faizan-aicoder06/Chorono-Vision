@echo off
echo Starting Chronos Vision...
echo.

:: Bypass npm.ps1 issues by running vite directly via node
node node_modules\vite\bin\vite.js --port 3000 --host 127.0.0.1 --strictPort

if %errorlevel% neq 0 (
    echo.
    echo -----------------------------------------------------
    echo ERROR: Failed to start the server. 
    echo Did you run 'npm install' successfully?
    echo -----------------------------------------------------
    pause
)
