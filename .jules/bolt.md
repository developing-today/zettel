# Bolt's Journal

## 2024-10-22 - Heist Template DOM & Asset Optimization
**Learning:** In Emanote sites using Heist templates, duplicate SVG actions across `footer.tpl`, `sidebar.tpl`, and `after-note.tpl` increase DOM node count and HTML payload size on every rendered page. Cleaning up duplicate template nodes and adding layout hints (`decoding="async"`, explicit dimensions) to header icons reduces CLS and rendering cost.
**Action:** Always check template files for copy-pasted duplicate DOM subtrees and unoptimized asset attributes in SSG templates.
