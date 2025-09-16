## Furkan Çağlar – Portfolio (Flutter Web)

Modern, fast, and SEO‑friendly personal portfolio built with Flutter Web.

### Features
- Multilingual UI (EN/TR) with `Localizations`
- Responsive layout for desktop, tablet, and mobile
- SEO tags (OpenGraph, Twitter Card, canonical, sitemap)
- Deployed on GitHub Pages at `furkanages.com`

### Tech Stack
- **Framework**: Flutter (Web)
- **Language**: Dart
- **Hosting**: GitHub Pages

### Prerequisites
- Flutter SDK installed and on PATH
- Dart SDK (bundled with Flutter)

Check your setup:

```bash
flutter --version
```

### Quick Start (Local)
```bash
# Install dependencies
flutter pub get

# Run in Chrome
flutter run -d chrome
```

### Build
```bash
# Production build for web
flutter build web --release
```
The output is generated under `build/web`.

### Deploy (GitHub Pages)
This repository publishes from the `gh-pages` branch.

Typical flow:
```bash
# Commit your changes
git add -A
git commit -m "Update"

# Push to gh-pages (triggers live update)
git push origin gh-pages
```

If you rebuild locally and need to update static web artifacts, ensure the root `index.html`, `manifest.json`, `sitemap.xml`, and assets are in sync. GitHub Pages will serve the latest commit on `gh-pages`.

### Project Structure
- `lib/` – Flutter source code
- `web/` – Flutter web bootstrap files
- `index.html` (root) – SEO and favicon overrides for production
- `assets/` – images, icons, fonts, files

### Customization
- Favicon: set in `index.html` and `web/index.html` via `assets/icons/favicon.png`
- SEO/OpenGraph: edit meta tags inside `index.html` files
- Localization: see `lib/core/localization/`

### Troubleshooting
- Favicon or assets not updating: hard refresh browser (Cmd/Ctrl+Shift+R) or clear cache. For GitHub Pages, allow a minute after push.
- Mixed content/paths: verify `<base href>` in `web/index.html` and absolute paths in meta images.

### License
This project is provided as‑is for personal portfolio use.
