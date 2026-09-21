@echo off
echo ========================================
echo  Aeronit Website - GitHub Deployment
echo ========================================
echo.

REM Check if git is installed
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Git is not installed or not in PATH
    echo Please install Git from https://git-scm.com/download/win
    pause
    exit /b 1
)

echo [1/6] Checking current directory...
cd /d "%~dp0"
echo     Current: %CD%
echo.

echo [2/6] Initializing Git repository...
git init
echo.

echo [3/6] Adding all files to Git...
git add .
echo.

echo [4/6] Creating initial commit...
git commit -m "Initial commit: Aeronit Defence Website

- React + Vite frontend
- Node.js backend
- GitHub Pages deployment configured
- SPA routing with proper redirects"
echo.

echo [5/6] Setting up main branch...
git branch -M main
echo.

echo ========================================
echo  Next Steps - You need to do this manually:
echo ========================================
echo.
echo  1. Create a new repository on GitHub:
echo     - Go to https://github.com/new
echo     - Repository name: aeronit-website (or your preferred name)
echo     - Keep it PUBLIC or PRIVATE (your choice)
echo     - Click "Create repository"
echo.
echo  2. Copy the repository URL (looks like):
echo     https://github.com/YOUR_USERNAME/aeronit-website.git
echo.
echo  3. Run this command to connect and push:
echo     git remote add origin https://github.com/YOUR_USERNAME/aeronit-website.git
echo     git push -u origin main
echo.
echo  4. Enable GitHub Pages:
echo     - Go to repo Settings → Pages
echo     - Select "GitHub Actions" as source
echo     - Your site will be at:
echo     https://YOUR_USERNAME.github.io/aeronit-website/
echo.
echo ========================================
echo.

pause
