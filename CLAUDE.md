# UI UX Pro Max — Design Intelligence Skill

A searchable design intelligence toolkit for AI-assisted web and app development. Provides curated databases of UI styles, color palettes, font pairings, chart types, and UX guidelines.

**GitHub:** https://github.com/nextlevelbuilder/ui-ux-pro-max-skill.git
**Local clone:** Clone to any working directory (e.g. `git clone https://github.com/nextlevelbuilder/ui-ux-pro-max-skill.git`)

---

## Quick Start

### Prerequisites
- Python 3.x (no external dependencies)

### Generate a Design System (Start Here)

```bash
python3 <clone-path>/src/ui-ux-pro-max/scripts/search.py "<product_type> <industry> <keywords>" --design-system [-p "Project Name"]
```

This runs parallel searches across all domains and returns a complete design system: pattern, style, colors, typography, effects, and anti-patterns to avoid.

**Example:**
```bash
python3 src/ui-ux-pro-max/scripts/search.py "engineering consultancy professional corporate" --design-system -p "Rox Engineering"
```

### Persist a Design System

Add `--persist` to save the design system for future sessions:

```bash
python3 scripts/search.py "<query>" --design-system --persist -p "Project Name"
```

Creates `design-system/MASTER.md` and optionally page-specific overrides with `--page "pagename"`.

---

## Domain Searches

Use these to deep-dive into specific design dimensions after generating the design system:

```bash
python3 scripts/search.py "<keyword>" --domain <domain> [-n <max_results>]
```

| Domain | Use For | Example |
|--------|---------|---------|
| `product` | Product type recommendations (SaaS, e-commerce, portfolio, healthcare) | `--domain product "engineering consultancy"` |
| `style` | UI styles + AI prompts + CSS keywords | `--domain style "trust authority professional"` |
| `typography` | Font pairings with Google Fonts imports | `--domain typography "professional modern"` |
| `color` | Color palettes by product type | `--domain color "corporate engineering"` |
| `landing` | Page structure and CTA strategies | `--domain landing "hero social-proof testimonial"` |
| `chart` | Chart types and library recommendations | `--domain chart "comparison timeline"` |
| `ux` | Best practices and anti-patterns | `--domain ux "animation accessibility loading"` |

---

## Stack-Specific Guidelines

```bash
python3 scripts/search.py "<keyword>" --stack <stack>
```

Available stacks: `html-tailwind` (default), `react`, `nextjs`, `astro`, `vue`, `nuxtjs`, `nuxt-ui`, `svelte`, `swiftui`, `react-native`, `flutter`, `shadcn`, `jetpack-compose`

---

## Workflow Summary

| Step | What | When |
|------|------|------|
| **1. Analyze** | Extract product type, audience, style keywords, stack | Always |
| **2. Design System** | Run `--design-system` for full recommendations | Always (required first step) |
| **3. Domain Searches** | Deep-dive specific dimensions (style, color, ux, etc.) | As needed for detail |
| **4. Stack Guidelines** | Get implementation-specific best practices | When building |

---

## Pre-Delivery Checklist (Web)

Before delivering any website, verify:

### Visual Quality
- [ ] Consistent icon family and style (no emoji as structural icons)
- [ ] Official brand assets with correct proportions
- [ ] Semantic color tokens used consistently (no random hardcoded hex)
- [ ] Hover/pressed states don't shift layout

### Interaction & Animation
- [ ] All interactive elements have clear hover/focus feedback
- [ ] Micro-interactions: 150-300ms with smooth easing
- [ ] Disabled states are visually distinct and non-interactive
- [ ] No animation on `prefers-reduced-motion: reduce`

### Contrast & Accessibility
- [ ] Body text contrast >= 4.5:1 against backgrounds
- [ ] Large text/headings contrast >= 3:1
- [ ] Color is not the only indicator of meaning
- [ ] All images have meaningful alt text
- [ ] Focus order matches visual order

### Layout & Responsiveness
- [ ] Tested at 375px (mobile), 768px (tablet), 1440px (desktop)
- [ ] Consistent spacing rhythm (8px grid)
- [ ] No horizontal overflow or broken layouts on small screens
- [ ] Touch targets >= 44px on mobile
- [ ] Long-form text has readable line length (max ~70 characters)

### Performance
- [ ] Images lazy-loaded below the fold
- [ ] Hero/above-fold images preloaded
- [ ] Fonts preconnected and display: swap
- [ ] No layout shift on load (reserve space for images/fonts)

### SEO (Search Engine Optimization)
- [ ] `<title>` tag is unique, descriptive, under 60 characters
- [ ] `<meta name="description">` is compelling, 150-160 characters, includes primary keyword
- [ ] `<meta name="keywords">` includes relevant terms (lower priority but still used by some engines)
- [ ] `<link rel="canonical">` points to the definitive URL
- [ ] All headings use proper hierarchy (single `<h1>`, then `<h2>`, `<h3>`, etc.)
- [ ] Images have descriptive `alt` text (not just "image" or empty)
- [ ] URL structure is clean and human-readable
- [ ] Internal links use descriptive anchor text
- [ ] Mobile-friendly (responsive design, no horizontal scroll)
- [ ] Page loads fast (compress images, minify CSS/JS, lazy load below fold)
- [ ] No broken links (404s)

### AEO (Answer Engine Optimization)
- [ ] JSON-LD structured data (`<script type="application/ld+json">`) for the business type
- [ ] Schema.org types used correctly (`ProfessionalService`, `LocalBusiness`, `Organization`, etc.)
- [ ] `aggregateRating` included if reviews exist (ratingValue, reviewCount, bestRating)
- [ ] `address`, `telephone`, `email`, `openingHoursSpecification` filled in for local businesses
- [ ] `hasCredential` for certifications, licenses, accreditations
- [ ] `sameAs` links to all official social profiles
- [ ] `areaServed` specifies service geography
- [ ] FAQ section uses `FAQPage` schema if applicable
- [ ] Service descriptions are clear and concise (AI snippets pull from well-structured content)
- [ ] Content answers common questions directly (who, what, where, when, how)

### Open Graph (Facebook/LinkedIn Social Sharing)
- [ ] `<meta property="og:type" content="website">` (or "article", "product", etc.)
- [ ] `<meta property="og:url">` matches the canonical URL
- [ ] `<meta property="og:title">` is concise and compelling (under 60 chars)
- [ ] `<meta property="og:description">` summarizes the page (under 160 chars)
- [ ] `<meta property="og:image">` is at least 1200x630px for best display
- [ ] `<meta property="og:site_name">` is the brand name
- [ ] `<meta property="og:locale">` matches target audience (e.g., "en_KE", "en_US")
- [ ] Image is high quality, not text-heavy, and represents the brand well

### Twitter Card
- [ ] `<meta name="twitter:card" content="summary_large_image">` (or "summary" for smaller)
- [ ] `<meta name="twitter:title">` under 70 characters
- [ ] `<meta name="twitter:description">` under 200 characters
- [ ] `<meta name="twitter:image">` is at least 800x418px (2:1 ratio ideal)
- [ ] `<meta name="twitter:url">` matches canonical
- [ ] Optional: `<meta name="twitter:site" content="@handle">` for attribution

### Structured Data Templates

**Local Business / Professional Service:**
```json
{
  "@context": "https://schema.org",
  "@type": "ProfessionalService",
  "name": "Business Name",
  "description": "What the business does",
  "url": "https://example.com",
  "telephone": "+254700000000",
  "email": "info@example.com",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "Street Address",
    "addressLocality": "City",
    "postalCode": "00100",
    "addressCountry": "KE"
  },
  "openingHoursSpecification": [
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Monday","Tuesday","Wednesday","Thursday","Friday"],
      "opens": "08:00",
      "closes": "18:00"
    }
  ],
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "5.0",
    "reviewCount": "182",
    "bestRating": "5"
  },
  "sameAs": ["https://facebook.com/...", "https://linkedin.com/..."],
  "areaServed": {"@type": "Country", "name": "Kenya"},
  "image": "https://example.com/hero.jpg",
  "priceRange": "$$"
}
```

**FAQ Page (for AEO):**
```json
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "What services do you offer?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "We offer civil engineering, structural design, environmental assessments..."
      }
    }
  ]
}
```

**Organization with credentials:**
```json
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "hasCredential": [
    {
      "@type": "EducationalOccupationalCredential",
      "credentialCategory": "license",
      "name": "EBK Licensed"
    }
  ]
}
```

---

## Design System Generated for Rox Engineering

**Pattern:** Enterprise Gateway — path selection, mega menu, trust signals
**Style:** Trust & Authority — badges, credentials, case studies with metrics
**Typography:** Poppins (headings) / Open Sans (body)
**Effects:** Badge hover, metric pulse, certificate carousel, smooth stat reveal

**Recommended Colors (skill output):**
- Primary: #2563EB (blue)
- CTA: #F97316 (orange)
- Background: #F8FAFC
- Text: #1E293B

**Actual brand colors preserved:**
- Navy: #0C1A3A
- Gold: #D4A012
- Off-white: #F8F7F4
- Text dark: #1a1a2e

**Decision:** Keep the original Rox Engineering brand colors (navy/gold) rather than the generic skill recommendations. Apply Trust & Authority style patterns and effects using the existing palette.

**Anti-patterns to avoid:** Playful design, hidden credentials, AI purple/pink gradients
