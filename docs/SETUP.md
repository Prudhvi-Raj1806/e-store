# 🚀 Quick Start Guide - Founders Vault Vanilla

## Prerequisites
- A Firebase account (free tier works fine)
- A local web server (Python, Node.js, or VS Code Live Server)

## Step 1: Firebase Setup (5 minutes)

### 1.1 Create Firebase Project
1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Click "Add project"
3. Name it "founders-vault" (or your choice)
4. Disable Google Analytics (optional)
5. Click "Create project"

### 1.2 Enable Firestore
1. In your Firebase project, click "Firestore Database"
2. Click "Create database"
3. Choose "Start in test mode" (we'll add security rules later)
4. Select a location (choose closest to you)
5. Click "Enable"

### 1.3 Enable Authentication
1. Click "Authentication" in the left sidebar
2. Click "Get started"
3. Click "Email/Password" under Sign-in providers
4. Toggle "Enable"
5. Click "Save"

### 1.4 Get Firebase Config
1. Click the gear icon ⚙️ next to "Project Overview"
2. Click "Project settings"
3. Scroll down to "Your apps"
4. Click the web icon `</>`
5. Register your app (name it "Founders Vault")
6. Copy the `firebaseConfig` object

### 1.5 Update Config File
Open `js/config.js` and replace with your Firebase config:

```javascript
const firebaseConfig = {
    apiKey: "YOUR_API_KEY_HERE",
    authDomain: "YOUR_PROJECT_ID.firebaseapp.com",
    projectId: "YOUR_PROJECT_ID",
    storageBucket: "YOUR_PROJECT_ID.appspot.com",
    messagingSenderId: "YOUR_SENDER_ID",
    appId: "YOUR_APP_ID"
};
```

## Step 2: Add Product Data

### Option A: Manual Entry (Recommended for testing)
1. Start your local server (see Step 3)
2. Register an account
3. Make yourself admin in Firebase Console:
   - Go to Firestore Database
   - Find your user document
   - Edit and set `isAdmin: true`
4. Go to `/admin.html` and add products manually

### Option B: Import from Firebase Console
1. Go to Firestore Database
2. Click "Start collection"
3. Collection ID: `products`
4. Add documents with this structure:
```json
{
  "title": "E-Cell Hoodie",
  "description": "Premium cotton hoodie",
  "image": "/assets/images/products/Hoodies.png",
  "cost": 2500,
  "stock": 5,  
  "category": "Apparel",
  "createdAt": [Firestore Timestamp]
}
```

## Step 3: Run Locally

### Using Python (Easiest)
```bash
cd founders-vault-vanilla
python -m http.server 8000
```
Open: `http://localhost:8000`

### Using Node.js
```bash
cd founders-vault-vanilla
npx serve
```
Open: `http://localhost:3000`

### Using VS Code
1. Install "Live Server" extension
2. Right-click `index.html`
3. Click "Open with Live Server"

## Step 4: Create Admin Account

1. Register a new account at `/login.html`
2. Go to Firebase Console → Firestore Database
3. Find your user document in the `users` collection
4. Click "Edit"
5. Change `isAdmin` from `false` to `true`
6. Save
7. Refresh the page - you should now see "Admin" link in navbar

## Step 5: Add Products

1. Go to `/admin.html`
2. Click "Products" tab
3. Fill in the form:
   - Title: "E-Cell Hoodie"
   - Category: "Apparel"
   - Cost: 2500
   - Stock: 5
   - Description: "Premium cotton hoodie"
   - Image URL: "/assets/images/products/Hoodies.png"
4. Click "Add Product"
5. Repeat for other products

## Step 6: Deploy to GitHub Pages

### 6.1 Push to GitHub
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/yourusername/founders-vault.git
git push -u origin main
```

### 6.2 Enable GitHub Pages
1. Go to your repository on GitHub
2. Click "Settings"
3. Click "Pages" in the left sidebar
4. Under "Source", select "main" branch
5. Click "Save"
6. Wait 1-2 minutes
7. Your site will be live at: `https://yourusername.github.io/founders-vault/`

## Troubleshooting

### "Firebase not defined" error
- Make sure you've updated `js/config.js` with your Firebase credentials
- Check that Firebase CDN scripts are loading in HTML files

### Products not showing
- Check Firebase Console → Firestore Database
- Verify products collection exists and has documents
- Check browser console for errors

### Can't login
- Verify Authentication is enabled in Firebase Console
- Check that Email/Password provider is enabled
- Look for errors in browser console

### Images not loading
- Verify image files are in `/assets/images/products/`
- Check that image paths in Firestore match actual file names
- Use browser DevTools Network tab to see failed requests

## Next Steps

1. **Add Security Rules**: Go to Firestore → Rules and add proper security
2. **Customize Design**: Edit CSS files to match your branding
3. **Add More Features**: Extend functionality as needed
4. **Test Thoroughly**: Test all features before going live

## Support

If you encounter issues:
1. Check browser console for errors
2. Verify Firebase configuration
3. Ensure all files are in correct directories
4. Check that local server is running

## Features Checklist

- ✅ User authentication (login/register)
- ✅ Product browsing with categories
- ✅ Shopping cart
- ✅ Wishlist
- ✅ User dashboard
- ✅ Order history
- ✅ Community announcements
- ✅ Admin panel (products, users, announcements)
- ✅ Dark mode
- ✅ Responsive design

Enjoy your new Founders Vault website! 🎉
