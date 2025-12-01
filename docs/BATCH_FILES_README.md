# 🎯 Quick Start Files

This folder contains convenient batch files to make your life easier!

## 📁 Available Files

### 1. `start-website.bat` 🚀
**Purpose**: Start your website locally for testing

**How to use**:
- Double-click the file
- Your browser will open automatically
- Website runs at http://localhost:8000

**What it does**:
- Detects Python or Node.js automatically
- Starts a local web server
- Opens your default browser
- Shows clear error messages if needed

**To stop**: Press `Ctrl+C` in the command window

---

### 2. `update-github.bat` 📤
**Purpose**: Update your website on GitHub Pages

**How to use**:
- Make changes to your code
- Double-click this file
- Enter a commit message (or press Enter for default)
- Your website updates automatically!

**What it does**:
- Stages all your changes
- Creates a git commit
- Pushes to GitHub
- Your live website updates in 1-2 minutes

**Note**: Only works after you've set up GitHub Pages (see guide below)

---

## 📚 Documentation Files

### `GITHUB_PAGES_GUIDE.md` 📖
Complete walkthrough for deploying your website to GitHub Pages

**Covers**:
- Creating a GitHub repository
- Pushing your code
- Enabling GitHub Pages
- Accessing your live website
- Troubleshooting common issues
- Alternative hosting options

### `QUICKSTART.md` ⚡
Quick demo guide for presentations

### `SETUP.md` 🔧
Detailed setup instructions

---

## 🎬 Typical Workflow

### First Time Setup:
1. Read `GITHUB_PAGES_GUIDE.md`
2. Create GitHub repository
3. Push your code
4. Enable GitHub Pages

### Daily Development:
1. **Test locally**: Double-click `start-website.bat`
2. **Make changes**: Edit your code
3. **Test again**: Refresh browser
4. **Deploy**: Double-click `update-github.bat`

---

## ⚠️ Requirements

### For Local Testing (`start-website.bat`):
- **Python 3.x** OR **Node.js**
- That's it!

### For GitHub Deployment (`update-github.bat`):
- **Git** installed
- **GitHub account**
- Repository already set up

---

## 🆘 Troubleshooting

### "Python/Node.js not found"
**Solution**: Install one of these:
- Python: https://www.python.org/downloads/
- Node.js: https://nodejs.org/

### "Git repository not initialized"
**Solution**: Follow the GitHub Pages guide first

### "Permission denied" when pushing
**Solution**: 
1. Check your GitHub credentials
2. Make sure you have write access to the repository

### Website not updating on GitHub Pages
**Solution**:
1. Wait 2-3 minutes (deployment takes time)
2. Check Actions tab on GitHub for deployment status
3. Clear browser cache (Ctrl+Shift+R)

---

## 💡 Pro Tips

### Tip 1: Keep the Server Running
When testing locally, keep the command window open. Closing it stops the server!

### Tip 2: Auto-Refresh
Use a browser extension like "Live Reload" for automatic page refresh when you save files.

### Tip 3: Test Before Deploying
Always test locally with `start-website.bat` before pushing to GitHub!

### Tip 4: Meaningful Commit Messages
When using `update-github.bat`, write clear commit messages like:
- "Added new product category"
- "Fixed cart bug"
- "Updated homepage design"

---

## 🔗 Quick Links

- **GitHub**: https://github.com
- **Git Download**: https://git-scm.com/
- **Python Download**: https://www.python.org/downloads/
- **Node.js Download**: https://nodejs.org/

---

## 📞 Need More Help?

Check these files in order:
1. `QUICKSTART.md` - For running locally
2. `GITHUB_PAGES_GUIDE.md` - For deploying online
3. `SETUP.md` - For detailed setup
4. `README.md` - For project overview

---

**Happy coding! 🎉**

*Last updated: December 2025*
