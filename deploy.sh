# Add changes to git.
#!/bin/bash
set -e

NOW=$(date "+%Y-%m-%d %H:%M:%S")

echo "🛠️  Building Hugo site..."
hugo

echo "🚀 Deploying to Netlify..."
netlify deploy --prod --dir=public

echo "✅ Netlify deployment complete."

echo "📦 Committing Hugo changes to Git..."
git add .
git commit -m "Blog update: ${NOW}"
git push

echo "🎉 Hugo blog deployed and pushed!"