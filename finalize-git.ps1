cd "c:\Users\Krishna Muthiah\Desktop\Aeronit_Website"

# Set git identity
git config user.email "krishna@example.com"
git config user.name "Krishna Muthiah"

Write-Host "Setting up Git identity..." -ForegroundColor Yellow

# Add and commit
git add .
git commit -m "Initial commit: Aeronit Defence Website

- React + Vite frontend with hero section fix
- Node.js backend
- GitHub Pages deployment configured
- SPA routing with proper redirects
- Defence-themed design with animations"

# Rename branch to main
git branch -M main

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "  Git Repository Ready!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "Files committed to local repository." -ForegroundColor White
Write-Host ""
Write-Host "To push to GitHub, run these commands:" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. Create a repository on GitHub first:" -ForegroundColor Yellow
Write-Host "   Go to: https://github.com/new" -ForegroundColor Gray
Write-Host "   Name: aeronit-website (or your choice)" -ForegroundColor Gray
Write-Host ""
Write-Host "2. Connect and push:" -ForegroundColor Yellow
Write-Host "   git remote add origin https://github.com/YOUR_USERNAME/aeronit-website.git" -ForegroundColor Gray
Write-Host "   git push -u origin main" -ForegroundColor Gray
Write-Host ""
Write-Host "3. Enable GitHub Pages:" -ForegroundColor Yellow
Write-Host "   Repository -> Settings -> Pages" -ForegroundColor Gray
Write-Host "   Source: GitHub Actions" -ForegroundColor Gray
Write-Host ""
Write-Host "Your site will be at:" -ForegroundColor Cyan
Write-Host "https://YOUR_USERNAME.github.io/aeronit-website/" -ForegroundColor White
