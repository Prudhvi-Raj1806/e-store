@echo off
echo ========================================
echo   Starting e-store Website
echo ========================================
echo.

REM Change to the project directory
cd /d "%~dp0"

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% equ 0 (
    echo [✓] Python detected - Starting server...
    echo.
    echo Opening browser in 3 seconds...
    echo Server will start at: http://localhost:8000
    echo.
    echo Press Ctrl+C to stop the server
    echo ========================================
    echo.
    
    REM Open browser after 3 seconds
    timeout /t 3 /nobreak >nul
    start http://localhost:8000
    
    REM Start Python HTTP server
    python -m http.server 8000
    goto :end
)

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% equ 0 (
    echo [✓] Node.js detected - Starting server...
    echo.
    echo Opening browser in 3 seconds...
    echo Server will start at: http://localhost:8080
    echo.
    echo Press Ctrl+C to stop the server
    echo ========================================
    echo.
    
    REM Open browser after 3 seconds
    timeout /t 3 /nobreak >nul
    start http://localhost:8080
    
    REM Start Node.js HTTP server
    npx -y http-server -p 8080
    goto :end
)

REM Neither Python nor Node.js found
echo [✗] Error: Neither Python nor Node.js is installed!
echo.
echo Please install one of the following:
echo   - Python: https://www.python.org/downloads/
echo   - Node.js: https://nodejs.org/
echo.
pause
goto :end

:end
