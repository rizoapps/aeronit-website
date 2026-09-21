# AERONIT DEFENCE PRIVATE LIMITED — Production-ready React + Node.js website

A complete multi-page corporate defence/aerospace website using only **React + Vite + CSS** on the frontend and **Node.js + Express** on the backend. No Docker, no Next.js, no Tailwind, no CMS and no database are required.

## Pages
- Home
- About
- Capabilities
- Solutions
- Industries
- Infrastructure
- News & Updates
- Careers
- Contact
- Privacy
- 404 fallback

## Local image structure
All visual assets are stored under `frontend/public/images/` in category folders:
- `hero/`
- `capabilities/`
- `industries/`
- `facility/`
- `products/`
- `news/`

There are 24 local SVG visual assets designed for the Aeronit site. Replace any of these with the company's own licensed photographs, product renders or facility photography when available.

## Run frontend
```bash
cd frontend
npm install
npm run dev
```

## Run backend
```bash
cd backend
npm install
copy .env.example .env
npm run dev
```

On macOS/Linux use `cp .env.example .env` instead of `copy`.

Frontend: `http://localhost:5173`
Backend: `http://localhost:5000`

## Production
Build the React site with `npm run build` and deploy the generated `frontend/dist` to your normal static hosting/web server. Run the Node API with `npm start` on a Node.js server and set `VITE_API_BASE` to the public API origin before the frontend build.

## Deploy to GitHub Pages

### Quick Deploy (npm script)
```bash
cd frontend
npm install
npm run deploy
```
Then enable GitHub Pages in repo Settings → Pages → Select `gh-pages` branch.

### Automatic Deploy (GitHub Actions)
Push to `main` branch and the `.github/workflows/deploy.yml` will automatically build and deploy.

Your site will be at: `https://YOUR_USERNAME.github.io/aeronit-website/`

### Other Hosting
See `frontend/HOSTING_GUIDE.txt` for Netlify, Vercel, and custom hosting instructions.

Configure SMTP in `backend/.env` to make the Contact form deliver email. The backend includes Helmet, CORS restrictions, JSON size limits and rate limiting.

## Before launch
1. Replace placeholder contact email/phone with verified official company details.
2. Replace vector placeholder visuals with company-owned or properly licensed photos/renders where desired.
3. Review the privacy notice with the company's legal advisor.
4. Add verified company registration/certification/product/project information only after approval.
5. Add analytics, Search Console and social/OG metadata if required.
6. Serve everything over HTTPS.
