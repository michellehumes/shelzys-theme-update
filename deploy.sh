#!/bin/bash

# Shelzy's Designs - Shopify Theme Deployment Script
# Run this script to deploy theme updates to your Shopify store

echo "🎀 Shelzy's Designs - Theme Deployment"
echo "========================================"

# Check if Shopify CLI is installed
if ! command -v shopify &> /dev/null; then
    echo "❌ Shopify CLI not found. Installing..."
    npm install -g @shopify/cli @shopify/theme
fi

# Store URL
STORE_URL="${SHOPIFY_STORE_URL:-shelzysdesigns.myshopify.com}"

echo ""
echo "📦 Preparing deployment to: $STORE_URL"
echo ""

# Get the directory of this script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create temp directory for theme files
TEMP_DIR=$(mktemp -d)
mkdir -p "$TEMP_DIR/sections"
mkdir -p "$TEMP_DIR/snippets"

# Copy files
echo "📋 Copying section files..."
cp "$SCRIPT_DIR/sections/"*.liquid "$TEMP_DIR/sections/" 2>/dev/null && echo "   ✓ Sections copied"
cp "$SCRIPT_DIR/snippets/"*.liquid "$TEMP_DIR/snippets/" 2>/dev/null && echo "   ✓ Snippets copied"

echo ""
echo "🚀 Deploying to Shopify..."
echo ""

# Deploy to Shopify
shopify theme push --path "$TEMP_DIR" --store "$STORE_URL" --allow-live

# Cleanup
rm -rf "$TEMP_DIR"

echo ""
echo "========================================"
echo "✅ Deployment Complete!"
echo ""
echo "Next Steps:"
echo "  1. Go to: https://${STORE_URL}/admin/themes"
echo "  2. Click 'Customize' on your live theme"
echo "  3. Add sections to homepage:"
echo "     - Hero Lifestyle Slideshow"
echo "     - Trust Badges Bar"  
echo "     - Sublimation vs Vinyl"
echo "     - Email Popup"
echo "  4. Open theme.liquid and add after <head>:"
echo "     {% render 'seo-meta-tags' %}"
echo ""
echo "🎉 Happy selling!"
