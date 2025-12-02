# Shelzy's Designs - Shopify Theme Update

## Phase 1: Critical Homepage Updates

Premium Shopify theme sections and snippets to boost conversions and establish brand authority.

### 🎯 What's Included

| File | Purpose |
|------|---------|
| `sections/hero-lifestyle.liquid` | Hero slideshow featuring lifestyle photography |
| `sections/trust-badges.liquid` | "As Seen On" marketplace logos bar |
| `sections/sublimation-education.liquid` | Sublimation vs Vinyl comparison |
| `sections/email-popup.liquid` | 10% off email capture with Klaviyo |
| `snippets/seo-meta-tags.liquid` | Comprehensive SEO & schema markup |

---

## 🚀 Quick Installation

### Option 1: Shopify Admin (Recommended for Beginners)

1. **Open Theme Editor**
   - Go to `Online Store` → `Themes`
   - Click `Actions` → `Edit code`

2. **Add Section Files**
   - Click `Add a new section` under Sections
   - Name it (e.g., `hero-lifestyle`)
   - Paste the code from each `.liquid` file in `/sections/`
   - Save each file

3. **Add Snippet Files**
   - Click `Add a new snippet` under Snippets
   - Name it `seo-meta-tags`
   - Paste the code from `snippets/seo-meta-tags.liquid`
   - Save

4. **Enable SEO Snippet**
   - Open `layout/theme.liquid`
   - Add this line after `<head>`:
     ```liquid
     {% render 'seo-meta-tags' %}
     ```
   - Save

5. **Add Sections to Homepage**
   - Go to `Online Store` → `Themes` → `Customize`
   - Click `Add section` on homepage
   - Add in order:
     - Hero Lifestyle Slideshow
     - Trust Badges Bar
     - Sublimation vs Vinyl
   - Add Email Popup anywhere

### Option 2: Shopify CLI (Recommended for Automation)

```bash
# Install Shopify CLI
npm install -g @shopify/cli @shopify/theme

# Login to your store
shopify theme dev --store shelzysdesigns.myshopify.com

# Pull current theme
shopify theme pull

# Copy section files
cp sections/*.liquid /path/to/your/theme/sections/
cp snippets/*.liquid /path/to/your/theme/snippets/

# Push changes
shopify theme push
```

### Option 3: GitHub + Shopify Integration

1. Connect your Shopify store to GitHub
2. Push this repo to your connected branch
3. Changes auto-deploy!

---

## ⚙️ Configuration Guide

### Hero Lifestyle Slideshow

| Setting | Recommended Value |
|---------|-------------------|
| Headline | "Premium Personalized Water Bottles That Last Forever" |
| Subheadline | "Sublimation printing means your name is permanently infused—no peeling, no fading. Ever." |
| CTA Text | "Customize Yours — Starting at $24.99" |
| Autoplay | ✅ Enabled |
| Autoplay Speed | 5000ms |

**Add your lifestyle photos (couples at beach/pool) as slides!**

### Trust Badges Bar

| Setting | Value |
|---------|-------|
| Label Text | "As Seen On" |
| Background | #FDF2F8 (light pink) |
| Show Amazon | ✅ |
| Show Walmart | ✅ |
| Show Michaels | ✅ |
| Show TikTok Shop | ✅ |
| Rating Text | "4.9/5 from 500+ Happy Customers" |

### Email Popup (Klaviyo Integration)

1. Get your Klaviyo List ID from Klaviyo dashboard
2. Get your Public API Key from Klaviyo → Account → Settings → API Keys
3. Enter both in section settings
4. Set discount code to match your Shopify discount

---

## 📸 Recommended Lifestyle Photos

Upload these to hero slideshow slides:

- Brandon & Ava at poolside (Beach vibes)
- Oliver & Emma at beach (Ocean backdrop)
- Austin & Nicole at resort (Tropical setting)
- Ethan & Olivia beach close-up (Sandy background)
- Sarah & Jacob casual poolside (Vacation mood)
- Sarah & Daniel mature couple (Family appeal)

---

## 🎨 Brand Colors

```css
Pink Primary: #EC4899
Pink Light: #FDF2F8
Pink Border: #FCE7F3
Success Green: #10B981
Text Dark: #111827
Text Gray: #6B7280
```

---

## 📊 SEO Features

The `seo-meta-tags.liquid` snippet includes:

- ✅ Open Graph tags for Facebook/LinkedIn sharing
- ✅ Twitter Card meta tags
- ✅ JSON-LD Product schema
- ✅ JSON-LD Organization schema
- ✅ JSON-LD Breadcrumb schema
- ✅ JSON-LD Article schema (for blog posts)
- ✅ JSON-LD CollectionPage schema
- ✅ Search action schema (site search)
- ✅ Dynamic meta descriptions
- ✅ Canonical URLs

---

## 🧪 Testing

After installation, test these:

**SEO:**
- [Google Rich Results Test](https://search.google.com/test/rich-results)
- [Facebook Sharing Debugger](https://developers.facebook.com/tools/debug/)
- [Twitter Card Validator](https://cards-dev.twitter.com/validator)

**Popup:**
```javascript
// Clear popup to test again
localStorage.removeItem('shelzys_popup_shown')
```

---

## 📁 Homepage Section Order

1. Announcement Bar (existing)
2. Header/Navigation (existing)
3. **Hero Lifestyle Slideshow** ← NEW
4. **Trust Badges Bar** ← NEW
5. **Sublimation vs Vinyl** ← NEW
6. Featured Collection (existing)
7. Reviews/Testimonials (existing)
8. Footer (existing)

---

## 🔄 Phase 2 Preview (Coming Soon)

- Judge.me Reviews Integration
- Quantity Discounts (bulk pricing)
- Cross-Sell "Frequently Bought Together"
- Collection Hero Banners
- Personalization Preview Tool

---

## 📞 Support

- Check code comments in each file
- Review [Shopify Liquid Docs](https://shopify.dev/docs/api/liquid)
- Use Claude for debugging

---

*Built for Shelzy's Designs — December 2025*
*Premium Personalized Water Bottles with Permanent Sublimation Printing*
