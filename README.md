# Bali Lending Website

A professional, institutional-grade marketing website for Bali Lending — private real estate lending for foreign-entity owned Bali property. Domain: **balilending.com**

## Overview

Bali Lending offers long-term mortgage-style loans and construction debt to owners of HGB-titled Bali properties held by foreign entities (Dubai, USA, Singapore, EU). Loans are secured by a triple-layer structure: Hak Tanggungan, PT PMA share pledge, and personal guarantee.

## Features

- **Institutional Design**: Dark navy and gold palette with Plus Jakarta Sans typography
- **Responsive Layout**: Works on desktop, tablet, and mobile
- **Sections**: Hero, How It Works, Why Foreign-Entity, Security Architecture, Loan Parameters, Who We Work With, Process, Loan Inquiry
- **Loan Inquiry Form**: Ready for Formspree, Netlify Forms, or custom API
- **SEO**: Meta tags and keywords for Bali real estate lending, HGB mortgage, foreign entity financing

## File Structure

```
.
├── index.html      # Main HTML with Bali Lending content
├── styles.css      # Institutional styling and responsive design
├── script.js       # Navigation, form handling, animations
└── README.md       # This file
```

## Local Development

### Option 1: Open in Browser
Open `index.html` directly in a web browser.

### Option 2: Local Server (Recommended)

```bash
# Python 3
python -m http.server 8000

# Node.js (install http-server globally)
npx http-server -p 8000
```

Visit `http://localhost:8000`

## Deployment for balilending.com

### Netlify
1. Drag and drop the project folder to [Netlify Drop](https://app.netlify.com/drop)
2. Add custom domain: balilending.com
3. Configure DNS: Add CNAME record pointing to the Netlify subdomain

### Vercel
1. Install Vercel CLI: `npm i -g vercel`
2. Run `vercel` in the project directory
3. Add balilending.com in Project Settings > Domains

### GitHub Pages
1. Push to a GitHub repository
2. Settings > Pages > Deploy from main branch
3. Add custom domain balilending.com in repository settings

## Form Integration

The loan inquiry form (`#loanInquiryForm`) is ready for backend wiring. To use:

**Formspree:**
```html
<form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
```

**Netlify Forms:** Add `netlify` attribute to the form:
```html
<form name="loan-inquiry" method="POST" data-netlify="true">
```

## Customization

- **Colors**: Edit CSS variables in `:root` in styles.css
- **Contact email**: Update `inquiries@balilending.com` in index.html
- **Content**: Edit section copy in index.html

## Browser Support

Chrome, Firefox, Safari, Edge (latest). Mobile browsers supported.
