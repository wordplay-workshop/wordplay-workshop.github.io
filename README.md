# Wordplay Workshop Website

**Website:** [wordplay-workshop.github.io](https://wordplay-workshop.github.io/)

Official website for the "Wordplay: When Language Meets Games" workshop at EMNLP 2025.

## Quick Start

### Local Development
1. Install Jekyll and dependencies:
   ```bash
   gem install jekyll bundler
   bundle install
   ```

2. Run the site locally:
   ```bash
   ./test-site.sh
   ```
   Or manually:
   ```bash
   bundle exec jekyll serve --livereload
   ```

3. Visit `http://localhost:4000`

### Making Changes
- **Content:** Edit the `.markdown` files
- **Navigation:** Update `_config.yml` 
- **Styling:** The site uses the `jekyll-theme-console` with a retro hacker style

## Structure
- `index.markdown` - Homepage with ASCII art
- `cfp.markdown` - Call for Papers
- `organizers.markdown` - Organizer profiles  
- `faq.markdown` - Frequently Asked Questions
- `_config.yml` - Site configuration
- `img/` - Organizer photos and assets

## Design Philosophy
We maintain a beloved retro/terminal aesthetic while ensuring:
- Modern accessibility standards
- Mobile responsiveness  
- Clear information hierarchy
- Fast loading times

## Important Dates
- **Submission deadline:** August 29, 2025 (AoE)
- **Workshop:** November 5th-9th, 2025 in Suzhou, China

## Built With
- Jekyll static site generator
- `jekyll-theme-console` theme
- GitHub Pages hosting

---

*Wordplay: Where Language Meets Games*
