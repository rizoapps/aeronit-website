cd "c:\Users\Krishna Muthiah\Desktop\Aeronit_Website"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Aeronit Website - Git Initialization" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check git
git --version
if ($LASTEXITCODE -ne 0) {
    Write-Host "[ERROR] Git is not installed" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "[1/4] Initializing Git repository..." -ForegroundColor Yellow
git init

Write-Host ""
Write-Host "[2/4] Adding all files..." -ForegroundColor Yellow
git add .

Write-Host ""
Write-Host "[3/4] Creating commit..." -ForegroundColor Yellow
git commit -m "Initial commit: Aeronit Defence Website

- React + Vite frontend with hero section fix
- Node.js backend
- GitHub Pages deployment configured
- SPA routing with proper redirects
- Defence-themed design with animations"

Write-Host ""
Write-Host "[4/4] Setting main branch..." -ForegroundColor Yellow
git branch -M main

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "  Git repository ready!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps (manual):" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. Create repo on GitHub:" -ForegroundColor White
Write-Host "   https://github.com/new" -ForegroundColor Gray
Write-Host ""
Write-Host "2. Copy the repo URL and run:" -ForegroundColor White
Write-Host "   git remote add origin https://github.com/YOUR_USERNAME/repo-name.git" -ForegroundColor Gray
Write-Host "   git push -u origin main" -ForegroundColor Gray
Write-Host ""
Write-Host "3. Enable GitHub Pages:" -ForegroundColor White
Write-Host "   Settings -> Pages -> GitHub Actions" -ForegroundColor Gray
Write-Host ""
Write-Host "Site URL: https://YOUR_USERNAME.github.io/repo-name/" -ForegroundColor Gray
