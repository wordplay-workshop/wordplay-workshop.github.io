#!/bin/bash

# Wordplay Workshop Website Testing Script
# This script helps you test the website locally

echo "🎮 Wordplay Workshop Website Tester"
echo "======================================"

# Check if Jekyll is installed
if ! command -v jekyll &> /dev/null; then
    echo "❌ Jekyll is not installed. Please install it first:"
    echo "   gem install jekyll bundler"
    exit 1
fi

echo "✅ Jekyll is installed"

# Check if bundle is available
if ! command -v bundle &> /dev/null; then
    echo "❌ Bundler is not installed. Please install it first:"
    echo "   gem install bundler"
    exit 1
fi

echo "✅ Bundler is available"

# Install dependencies
echo "📦 Installing dependencies..."
bundle install

# Check for common issues
echo "🔍 Checking for common issues..."

# Check if _config.yml exists
if [ ! -f "_config.yml" ]; then
    echo "❌ _config.yml not found!"
    exit 1
fi

echo "✅ Configuration file found"

# Check if required pages exist
required_pages=("index.markdown" "cfp.markdown" "organizers.markdown" "faq.markdown")
for page in "${required_pages[@]}"; do
    if [ ! -f "$page" ]; then
        echo "❌ Required page $page not found!"
        exit 1
    fi
done

echo "✅ All required pages found"

# Check if images directory exists
if [ ! -d "img" ]; then
    echo "⚠️  Images directory not found - some images may not display"
else
    echo "✅ Images directory found"
fi

echo ""
echo "🚀 Starting local server..."
echo "📱 Your site will be available at: http://localhost:4000"
echo "🔄 The site will auto-reload when you make changes"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

# Start the Jekyll server
bundle exec jekyll serve --livereload
