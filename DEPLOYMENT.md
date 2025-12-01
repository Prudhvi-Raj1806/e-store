# 🚀 Deployment Guide

This guide will help you deploy PropShop24 to GitHub Pages.

## Quickest Method

We have created a batch file to automate the update process!

1.  **Double-click** `update-github.bat` in the root folder.
2.  Enter a commit message (e.g., "Initial deployment").
3.  Wait for the script to finish.

Your website will be live at: `https://YOUR_USERNAME.github.io/propshop24/`

---

## Manual Setup (First Time)

If you haven't set up the repository yet, follow these steps:

1.  **Create a Repository** on GitHub named `propshop24`.
2.  **Open Terminal** in this folder and run:
    ```bash
    git init
    git add .
    git commit -m "Initial commit"
    git branch -M main
    git remote add origin https://github.com/YOUR_USERNAME/propshop24.git
    git push -u origin main
    ```
3.  **Enable GitHub Pages**:
    - Go to Repository Settings > Pages.
    - Select `main` branch and `/ (root)` folder.
    - Click Save.

## Detailed Documentation

For a complete walkthrough, troubleshooting, and more details, please read:
👉 [**docs/GITHUB_PAGES_GUIDE.md**](docs/GITHUB_PAGES_GUIDE.md)

## Other Helpful Files

- **Start Local Server**: Double-click `start-website.bat`
- **Deployment Summary**: [docs/DEPLOYMENT_SUMMARY.md](docs/DEPLOYMENT_SUMMARY.md)
