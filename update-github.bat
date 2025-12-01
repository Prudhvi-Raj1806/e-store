@echo off
echo ========================================
echo   Updating e-store on GitHub
echo ========================================
echo.

REM Change to the project directory
cd /d "%~dp0"

REM Check if git is initialized
if not exist ".git" (
    echo [✗] Error: Git repository not initialized!
    echo.
    echo Please follow the GitHub Pages setup guide first.
    echo See: GITHUB_PAGES_GUIDE.md
    echo.
    pause
    exit /b 1
)

echo [1/3] Staging all changes...
git add .

echo.
echo [2/3] Creating commit...
set /p commit_message="Enter commit message (or press Enter for default): "

if "%commit_message%"=="" (
    git commit -m "Website update - %date% %time%"
) else (
    git commit -m "%commit_message%"
)

if %errorlevel% neq 0 (
    echo.
    echo [!] No changes to commit or commit failed.
    echo.
    pause
    exit /b 1
)

echo.
echo [3/3] Pushing to GitHub...
git push

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo   ✓ Success!
    echo ========================================
    echo.
    echo Your website will update in 1-2 minutes at:
    echo https://YOUR_USERNAME.github.io/e-store/
    echo.
    echo Check deployment status at:
    echo https://github.com/YOUR_USERNAME/e-store/actions
    echo.
) else (
    echo.
    echo [✗] Push failed! Please check your internet connection
    echo     and GitHub credentials.
    echo.
)

pause
