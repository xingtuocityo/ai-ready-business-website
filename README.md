# AI-ready Business Website Generator

> Turn a normal company website into an AI-readable business profile.

Generate a small business website that is easier for AI search engines and answer bots to understand, cite, and recommend.

This project helps businesses turn scattered company information into:

- a clean static website,
- structured service pages,
- FAQ pages based on real customer questions,
- `llms.txt`,
- `sitemap.xml`,
- `robots.txt`,
- schema.org JSON-LD metadata,
- and a daily AI visibility question list.

## Why This Exists

Traditional websites are built mainly for human visitors. AI-era business websites also need to be readable by answer engines, agent crawlers, and retrieval systems.

This project does not promise ranking, indexing, or guaranteed AI recommendations. It gives businesses a repeatable structure for making their website clearer, easier to cite, and easier to audit.

## The Core Idea

Most business websites hide important facts in vague slogans, images, PDFs, or disconnected posts. AI assistants need a clearer map:

```text
business facts -> service pages -> customer questions -> structured metadata -> AI visibility checks
```

This repository packages that map into a public-safe starter kit.

## Who It Is For

- local businesses,
- restaurants, hotels, tourist attractions, clinics, agencies, and B2B service firms,
- teams building AI-ready landing pages,
- GEO / SEO service providers,
- founders who want a simple evidence-based website structure.

## What It Generates

```text
output/
  index.html
  services.html
  faq.html
  about.html
  llms.txt
  sitemap.xml
  robots.txt
  schema-org.json
  ai_visibility_questions.md
```

## Example Use Cases

- A restaurant wants AI assistants to understand its group-buying, delivery, and private-room services.
- A scenic attraction wants clearer public pages for tickets, family trips, seasonal events, and FAQs.
- A local service company wants an AI-readable website before running GEO or AI visibility monitoring.
- An agency wants a reusable template for delivering AI-ready sites to clients.

## Product Principles

1. Make the business easy to understand.
2. Turn real customer questions into website structure.
3. Keep claims verifiable.
4. Separate submission, crawling, citation, recommendation, and business conversion.
5. Use public, non-sensitive data only.

## Public Release Safety

Before publishing a website or repository generated from this kit:

- remove private customer data,
- remove internal pricing, margin, and contract details,
- remove API keys, cookies, tokens, and webhooks,
- avoid guaranteed ranking or indexing claims,
- keep generated examples fictional unless you have explicit permission.

## Quick Start

This draft repository currently provides templates and sample output. A generator script will be added after the first public-safe sample is reviewed.

1. Copy `templates/company-profile.yml.example`.
2. Fill in public company facts.
3. Use the checklist in `docs/ai-visible-content-checklist.md`.
4. Compare your site with `sample-output/`.

## Repository Status

`TECH_OK_UNPROVEN`: this is a public-release draft. It is not published yet and must pass a public-sanitization review before release.

## What This Project Does Not Do

- It does not guarantee AI search ranking.
- It does not guarantee indexing.
- It does not submit private customer data.
- It does not replace human review.
- It does not publish sensitive pricing, contracts, keys, or private operational data.

## Roadmap

- v0.1.0: Public-safe templates and sample static site.
- v0.2.0: Local generator script.
- v0.3.0: Website audit script.
- v0.4.0: Daily AI visibility question monitor integration.

## Suggested Repository Topics

`ai-search`, `geo`, `llms-txt`, `static-site-generator`, `small-business`, `agent-ready`, `website-audit`, `schema-org`
