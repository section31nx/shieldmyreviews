# 1. (If you haven’t already) install the Netlify CLI globally
npm install -g netlify-cli

# 2. Log in to your Netlify account
netlify login

# 3. In your project root, link (or create) a Netlify site
cd /Users/dev/dev/shieldmyreviews
netlify init
# • Choose “Create & configure a new site” (or link to an existing one).
# • Pick the team (personal or org).
# • Give it a name or accept the generated one.
# • Set “_site” as your publish directory.

# 4. Deploy a draft to test
netlify deploy --dir=_site
# • You’ll get a unique draft URL for preview.

# 5. Deploy to production
netlify deploy --dir=_site --prod
# • This publishes your live site at yourNetlifyName.netlify.app.

# 6. (Optional) Set your custom domain
netlify open:site
# • In the browser, go to “Domain settings” → “Add custom domain” → enter shieldmyreviews.com
# • Follow the DNS instructions (add CNAME/A records).
# Netlify will provision SSL automatically.

# 7. Subsequent updates
#  - Re-run your make_env.sh (or just `npm run build`)
#  - Then:
netlify deploy --dir=_site --prod