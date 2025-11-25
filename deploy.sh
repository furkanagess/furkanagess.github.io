#!/bin/bash

# Flutter Portfolio Deployment Script for GitHub Pages
# This script builds the Flutter web app and prepares it for GitHub Pages deployment

echo "🚀 Starting Flutter Portfolio Deployment..."

# Clean previous builds
echo "🧹 Cleaning previous builds..."
flutter clean

# Get dependencies
echo "📦 Getting dependencies..."
flutter pub get

# Build for web with proper base href
echo "🔨 Building Flutter web app..."
flutter build web --release --base-href / --pwa-strategy=none

# Copy CNAME file to build directory
echo "📄 Copying CNAME file..."
cp CNAME build/web/

# Copy additional files if they exist
if [ -f "robots.txt" ]; then
    echo "🤖 Copying robots.txt..."
    cp robots.txt build/web/
fi

if [ -f "sitemap.xml" ]; then
    echo "🗺️ Copying sitemap.xml..."
    cp sitemap.xml build/web/
fi

if [ -f "app-ads.txt" ]; then
    echo "📱 Copying app-ads.txt..."
    cp app-ads.txt build/web/
fi

echo "✅ Build completed successfully!"
echo "📁 Build files are in: build/web/"
echo ""
echo "To deploy to GitHub Pages:"
echo "1. Commit and push your changes to the main branch"
echo "2. The GitHub Actions workflow will automatically deploy to GitHub Pages"
echo "3. Your site will be available at: https://furkanages.com"
echo ""
echo "For manual deployment, you can copy the contents of build/web/ to your gh-pages branch"
