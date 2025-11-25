# GitHub Pages Deployment Guide

Bu proje GitHub Pages üzerinde https://furkanages.com adresinde yayınlanacak şekilde yapılandırılmıştır.

## Otomatik Deployment (Önerilen)

### GitHub Actions Workflow

Proje, GitHub Actions kullanarak otomatik deployment için yapılandırılmıştır:

- **Workflow dosyası**: `.github/workflows/deploy.yml`
- **Trigger**: `main` veya `master` branch'ine push yapıldığında
- **Domain**: `furkanages.com` (CNAME dosyası ile yapılandırılmış)

### Deployment Adımları

1. Kod değişikliklerinizi yapın
2. Değişiklikleri commit edin ve `main` branch'ine push edin:
   ```bash
   git add .
   git commit -m "Update portfolio"
   git push origin main
   ```
3. GitHub Actions otomatik olarak build alacak ve GitHub Pages'e deploy edecek
4. Birkaç dakika sonra siteniz https://furkanages.com adresinde güncellenmiş olacak

## Manuel Deployment

### Deploy Script Kullanımı

```bash
# Deploy script'ini çalıştırın
./deploy.sh
```

Bu script:

- Flutter web build'i alır
- CNAME dosyasını kopyalar
- Gerekli dosyaları (robots.txt, sitemap.xml, app-ads.txt) kopyalar
- Build dosyalarını `build/web/` dizinine hazırlar

### Manuel GitHub Pages Deployment

1. Build script'ini çalıştırın: `./deploy.sh`
2. `build/web/` dizinindeki tüm dosyaları `gh-pages` branch'ine kopyalayın
3. GitHub Pages ayarlarında `gh-pages` branch'ini source olarak seçin

## Domain Yapılandırması

### CNAME Dosyası

- **Dosya**: `CNAME`
- **İçerik**: `furkanages.com`
- Bu dosya GitHub Pages'in custom domain kullanmasını sağlar

### DNS Ayarları

Domain sağlayıcınızda aşağıdaki DNS kayıtlarını ekleyin:

```
Type: CNAME
Name: www
Value: furkanages.github.io

Type: A
Name: @
Value: 185.199.108.153
Value: 185.199.109.153
Value: 185.199.110.153
Value: 185.199.111.153
```

## SEO ve Meta Tags

Proje aşağıdaki SEO optimizasyonları ile yapılandırılmıştır:

- Open Graph meta tags
- Twitter Card meta tags
- Structured data (JSON-LD)
- Canonical URLs
- Multi-language support (EN/TR)
- Sitemap ve robots.txt

## Troubleshooting

### Build Hataları

```bash
# Flutter cache'i temizle
flutter clean
flutter pub get

# Web build'i tekrar dene
flutter build web --release --base-href /
```

### GitHub Pages Ayarları

1. Repository Settings > Pages
2. Source: "GitHub Actions" seçin
3. Custom domain: `furkanages.com` girin
4. "Enforce HTTPS" seçeneğini aktif edin

### Domain Doğrulama

- CNAME dosyasının repository root'unda olduğundan emin olun
- DNS ayarlarının doğru yapılandırıldığından emin olun
- GitHub Pages ayarlarında custom domain'in doğru girildiğinden emin olun

## Performans Optimizasyonu

- Flutter web build'i release mode'da alınır
- Assets optimize edilir
- Gzip compression GitHub Pages tarafından otomatik uygulanır
- CDN kullanımı için GitHub Pages'in global CDN'i kullanılır
