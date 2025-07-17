#!/bin/bash

# 1. Build Flutter Web
echo "🔧 Building Flutter web..."
flutter build web

# 2. Prepare the deployment folder
echo "📁 Setting up deployment folder..."
rm -rf flutter-web-deploy
mkdir flutter-web-deploy
cp -r build/web/* flutter-web-deploy/

# 3. Go into the deployment folder
cd flutter-web-deploy

# 4. Init git & push to GitHub
echo "🔗 Setting up GitHub repo..."
git init
git remote add origin https://github.com/Seleemmiah/flutter-web-deploy.git

# Clean commit and push
git add .
git commit -m "🚀 Deploy Flutter Web"
git branch -M main
git push -f origin main

echo "✅ Deployment folder pushed to GitHub!"

# 5. Optional: add vercel.json for routing (if needed)
cat <<EOF > vercel.json
{
  "version": 2,
  "routes": [
    {
      "src": "/(.*)",
      "dest": "/index.html"
    }
  ]
}
EOF

echo "🛠 vercel.json created for SPA routing"

# Done
echo "🎉 All done! You can now connect this repo to Vercel"
