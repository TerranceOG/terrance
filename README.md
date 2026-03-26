# Sibla Public Site

This static site is ready to publish.

## Files
- `index.htm` (home)
- `item1.htm`, `item2.htm`, `item3.htm`, `item4.htm`
- `download (2).png`, `drip-goku-meme-song-original-dragon-ball-super-music-clash-of-gods-in-description.mp3`

## Local preview

1. Open `index.htm` directly in a browser.
2. Or run:
   - `python -m http.server 8000`
   - open `http://localhost:8000/`

## GitHub Pages deploy

1. `cd c:\\Users\\DEY_A\\OneDrive\\Desktop\\WEN`
2. `git init`
3. `git add .`
4. `git commit -m "Publish Sibla site"`
5. `git remote add origin https://github.com/<username>/<repo>.git`
6. `git push -u origin main`
7. In GitHub repo Settings > Pages > Source: `main` branch / root
8. Public URL: `https://<username>.github.io/<repo>/`

## Netlify deploy

1. Go to https://app.netlify.com/drop
2. Drag folder `WEN`
3. Share URL shown by Netlify
