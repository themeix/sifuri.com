# Sifuri.com – Views Of A Modern World (Jekyll & Tailwind CSS v4)

A high-performance, maintainable static website migrated from WordPress to **Jekyll** and **Tailwind CSS v4**, deployed automatically to **GitHub Pages** via **GitHub Actions**.

---

## Content Management & Editing Guide

All website content is organized directly in human-readable Markdown and YAML files. You do not need any CMS (such as WordPress or Decap CMS). Content can be edited using any text editor, VS Code, or directly in the browser on GitHub.com.

### 1. Site Metadata, Contact Info & Global Settings
**File:** `_data/settings.yml`

This file controls the global metadata:
- **Title & Tagline:** "Views of a Modern World – Everything else Rick writes"
- **Contact Details:** Email (`rick@thoughtstorm.com`), phone number, and address
- **Social Links:** Twitter / X profile URL
- **Footer Text:** Copyright notice and site design credits

---

### 2. Creating & Editing Blog Articles
**Directory:** `_posts/`

Each article is a Markdown file following the naming convention:
`YYYY-MM-DD-article-slug.md` (e.g. `2023-10-31-fudging-the-numbers-on-shoplifting.md`).

#### Front Matter & Article Template:
```markdown
---
layout: post
title: "Article Title"
date: 2026-10-29 10:00:00 -0400
author: "rickcolosimo"
permalink: /article-slug/
categories:
  - uncategorized
tags:
  - productivity
  - tips
excerpt: "A short summary shown on post feeds and in search results."
---

Your article body text goes here. Use standard Markdown for formatting:

## Section Heading

Write paragraphs naturally with a blank line between each paragraph.

- Bullet item one
- Bullet item two

> Blockquotes can be used for key takeaways or notable quotes.
```

---

### 3. Creating & Editing Static Pages
**Directory:** `_pages/`

Static pages live in `_pages/` (e.g. `tools.md`, `more-about-rick.md`, `autism-in-my-life.md`).

#### Page Template:
```markdown
---
layout: page
title: "About Rick"
permalink: /about-2/more-about-rick/
---

Page content written in Markdown or standard HTML.
```

---

### 4. Media & Image Uploads
**Directory:** `assets/uploads/`

- Place images or files in `assets/uploads/`.
- Embed images inside any Markdown post or page:
  ```markdown
  ![Description]({{ '/assets/uploads/2021/01/logo-sifuri.png' | relative_url }})
  ```
- Or using root-relative path:
  ```markdown
  ![Description](/assets/uploads/2021/01/logo-sifuri.png)
  ```

---

### 5. Managing Categories, Tags & Archives

- **Categories:** Pages in `category/` (e.g. `category/uncategorized.html`) display all posts belonging to that category.
- **Tags:** Pages in `tag/` (e.g. `tag/productivity.html`) display posts containing that tag. Tag counts and cloud are managed in `_data/tags.yml`.
- **Month Archives:** Monthly archive files live in `archives/` (e.g. `archives/2023-10.html`). They map directly to `permalink: /2023/10/` to preserve historical URLs without cluttering the project root.

---

## Local Development & Testing

### Prerequisites
- **Ruby** (v3.1+) & Bundler
- **Node.js** (v18+) & npm

### Setup & Run Commands

1. **Install dependencies:**
   ```bash
   npm install
   bundle install
   ```

2. **Compile Tailwind CSS v4:**
   ```bash
   npm run build:css
   ```

3. **Start local development server:**
   ```bash
   bundle exec jekyll serve
   ```
   Open `http://localhost:4000` in your browser.

4. **Production Build Test:**
   ```bash
   npm run build:css
   bundle exec jekyll build
   ```

---

## Deployment to GitHub Pages

Deployment is **100% automated** using GitHub Actions (`.github/workflows/pages.yml`).

Whenever you commit and push changes to the `main` branch, the workflow will automatically:
1. Check out the repository.
2. Install Ruby gems and build the Jekyll site.
3. Deploy the production static files to GitHub Pages.

### How to Publish Changes:
```bash
git add .
git commit -m "Add new blog post"
git push origin main
```
The site updates automatically in ~20 seconds.

---

## Custom Domain Configuration

The custom domain `sifuri.com` is configured in the `CNAME` file:
```
sifuri.com
```

DNS settings pointing to GitHub Pages:
- **Apex domain (`sifuri.com`):**
  - `185.199.108.153`
  - `185.199.109.153`
  - `185.199.110.153`
  - `185.199.111.153`
- **`www` subdomain (`www.sifuri.com`):**
  - CNAME record pointing to `themeix.github.io`
