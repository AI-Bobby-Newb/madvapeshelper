#!/bin/bash

# Simple deployment script for static vape store dashboard
echo "Vape Store Static Dashboard Deployment"
echo "======================================="

echo "1. Checking for required files..."
required_files=("index.html" "styles.css" "monthly_analysis.html" "product_analysis.html" "category_analysis.html" "top_products.html" "business_insights.html")
missing_files=0

for file in "${required_files[@]}"; do
  if [ ! -f "$file" ]; then
    echo "❌ Missing required file: $file"
    missing_files=$((missing_files+1))
  else
    echo "✅ Found: $file"
  fi
done

if [ $missing_files -gt 0 ]; then
  echo "Error: $missing_files required files are missing. Please fix before deploying."
  exit 1
fi

echo -e "\n2. Ready for deployment"
echo "You can deploy these static files to any hosting service:"
echo "- GitHub Pages"
echo "- Netlify"
echo "- Vercel (static deployment)"
echo "- Amazon S3"
echo "- Any standard web hosting service"

echo -e "\nTo deploy to GitHub Pages:"
echo "1. Push these files to a GitHub repository"
echo "2. Go to repository Settings > Pages"
echo "3. Select the branch and folder to deploy from"
echo "4. Click Save"

echo -e "\nDeployment preparation complete."
