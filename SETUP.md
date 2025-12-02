# GitHub Setup Guide for Automated Deployment

## Quick Start

### Step 1: Create GitHub Repository

```bash
# In your local terminal
cd shelzys-theme-update
git init
git add .
git commit -m "Initial commit: Phase 1 homepage sections"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/shelzys-theme-update.git
git push -u origin main
```

### Step 2: Get Shopify Theme Access Token

1. Go to: `https://shelzysdesigns.myshopify.com/admin/settings/apps/development`
2. Click **"Create an app"** (or use existing)
3. Name it: `GitHub Theme Deploy`
4. Under **Configuration** → **Admin API Integration**:
   - Enable these scopes:
     - `read_themes`
     - `write_themes`
5. Click **Install app**
6. Copy the **Admin API access token**

### Step 3: Get Theme ID

1. Go to: `https://shelzysdesigns.myshopify.com/admin/themes`
2. On your live theme, click the `...` menu
3. Click **Edit code**
4. Look at the URL: `https://admin.shopify.com/store/shelzysdesigns/themes/XXXXXXXXXX`
5. Copy the number (that's your Theme ID)

### Step 4: Add GitHub Secrets

1. Go to your GitHub repo → **Settings** → **Secrets and variables** → **Actions**
2. Click **New repository secret** and add these:

| Secret Name | Value |
|-------------|-------|
| `SHOPIFY_CLI_THEME_TOKEN` | Your Admin API access token from Step 2 |
| `SHOPIFY_STORE_URL` | `shelzysdesigns.myshopify.com` |
| `SHOPIFY_THEME_ID` | Your theme ID from Step 3 |

### Step 5: Enable GitHub Actions

1. Go to your repo → **Actions** tab
2. Click **"I understand my workflows, go ahead and enable them"**

---

## How Deployment Works

1. **Push to main branch** → Triggers automatic deployment
2. **Manual trigger** → Go to Actions → "Deploy to Shopify" → "Run workflow"

After deployment:
- Section files are added to your theme
- Go to Theme Customizer to add sections to homepage
- Manually add SEO snippet to theme.liquid

---

## Manual Deployment (Alternative)

If you prefer not to use GitHub Actions:

```bash
# Install Shopify CLI
npm install -g @shopify/cli @shopify/theme

# Login to your store
shopify auth logout
shopify theme push --store shelzysdesigns.myshopify.com
```

Or use the included script:
```bash
chmod +x deploy.sh
./deploy.sh
```

---

## Troubleshooting

**"Theme not found" error:**
- Double-check your Theme ID
- Make sure the theme exists and isn't archived

**"Unauthorized" error:**
- Regenerate your Admin API token
- Ensure `read_themes` and `write_themes` scopes are enabled

**Files not appearing in theme:**
- Check GitHub Actions logs for errors
- Manually verify files in Shopify Admin → Themes → Edit code

---

## File Structure

```
shelzys-theme-update/
├── .github/
│   └── workflows/
│       └── deploy-shopify.yml    # Auto-deploy workflow
├── sections/
│   ├── hero-lifestyle.liquid     # Hero slideshow
│   ├── trust-badges.liquid       # Marketplace logos
│   ├── sublimation-education.liquid  # Competitive advantage
│   └── email-popup.liquid        # Klaviyo popup
├── snippets/
│   └── seo-meta-tags.liquid      # SEO & schema markup
├── deploy.sh                     # Manual deploy script
├── README.md                     # Main documentation
├── SETUP.md                      # This file
└── .gitignore
```

---

## Support

Need help? Check:
- [Shopify CLI Documentation](https://shopify.dev/themes/tools/cli)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Shopify Theme Development](https://shopify.dev/themes)
