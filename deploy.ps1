# ============================================================
#  Immanuel Samuel — Portfolio Deploy Script (GitHub Pages)
# ============================================================
#  USAGE:
#    1. Create a new EMPTY GitHub repo named:  imman9965.github.io
#       (must match your username exactly, no README/license)
#    2. Right-click this file > "Run with PowerShell"
#       OR run from a PowerShell window:  .\deploy.ps1
#    3. When done, your site will be live at:
#       https://imman9965.github.io
# ============================================================

$ErrorActionPreference = "Stop"
Set-Location -Path $PSScriptRoot

Write-Host ""
Write-Host "Portfolio Deploy - GitHub Pages" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# --- 1. Clean up any broken .git folder from previous attempts ---
if (Test-Path ".git") {
    Write-Host "Removing existing .git folder..." -ForegroundColor Yellow
    Remove-Item -Recurse -Force ".git" -ErrorAction SilentlyContinue
}

# --- 2. Check git is installed ---
try { git --version | Out-Null }
catch {
    Write-Host "ERROR: git is not installed." -ForegroundColor Red
    Write-Host "Install it from: https://git-scm.com/download/win" -ForegroundColor Yellow
    Read-Host "Press Enter to exit"; exit 1
}

# --- 3. Init repo and commit ---
Write-Host "Initializing git repository..." -ForegroundColor Green
git init -b main | Out-Null
git config user.email "imman5601@gmail.com"
git config user.name  "imman9965"

git add -A
git commit -m "Deploy portfolio" | Out-Null
Write-Host "  Committed."

# --- 4. Add remote and push ---
$repoUrl = "https://github.com/imman9965/imman9965.github.io.git"
Write-Host ""
Write-Host "Pushing to $repoUrl ..." -ForegroundColor Green
Write-Host "  (GitHub will prompt you to log in if needed)" -ForegroundColor DarkGray
Write-Host ""

git remote add origin $repoUrl 2>$null
git push -u origin main --force

Write-Host ""
Write-Host "Done!" -ForegroundColor Green
Write-Host "Your site will be live in 30-60 seconds at:" -ForegroundColor Cyan
Write-Host "  https://imman9965.github.io" -ForegroundColor White
Write-Host ""
Read-Host "Press Enter to close"
