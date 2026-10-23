# Bolt's Journal - Critical Learnings

## 2025-05-10 - Heist Template Optimization in Emanote
**Learning:** Emanote sites render Heist XML/HTML templates (`.tpl`) into every static page output. Redundant or duplicated DOM elements (e.g. duplicate action links) and unoptimized `<img>` tags propagate across all generated pages, multiplying DOM overhead and Cumulative Layout Shift (CLS).
**Action:** Inspect Heist templates under `templates/` for duplicate DOM elements and missing image size/loading attributes (`width`, `height`, `loading="lazy"`, `decoding="async"`).
