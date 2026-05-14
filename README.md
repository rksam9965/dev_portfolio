# Immanuel Samuel — Portfolio

A developer-themed portfolio built as a single self-contained HTML file with animated gradient mesh, custom cursor, 3D tilt cards, and typewriter effects.

**Live:** https://imman9965.github.io

## Deploy in 3 steps

### 1. Create the GitHub repo

Go to https://github.com/new and create a new repo with **exactly** this name:

```
imman9965.github.io
```

- Owner: `imman9965`
- Visibility: **Public**
- Leave everything else unchecked (no README, no .gitignore, no license)

Click **Create repository**.

### 2. Run the deploy script

In this folder, right-click `deploy.ps1` and choose **"Run with PowerShell"**.

If Windows blocks it, open PowerShell in this folder and run:

```powershell
powershell -ExecutionPolicy Bypass -File .\deploy.ps1
```

You may be prompted to log in to GitHub the first time.

### 3. Wait ~60 seconds

Your portfolio will be live at:

**https://imman9965.github.io**

(GitHub Pages auto-enables for `username.github.io` repos — no extra setup needed.)

## Stack

- Pure HTML / CSS / JavaScript (no build step, no dependencies)
- Google Fonts: JetBrains Mono + Space Grotesk
- Animated gradient mesh, glassmorphism, 3D tilt cards
- Fully responsive (mobile, tablet, desktop)

## Run locally

Just open `index.html` in any browser. No build step required.
