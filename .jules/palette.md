## 2025-05-18 - Heist Templates Focus Visible Ring Patterns
**Learning:** In Heist-templated Emanote static sites using Tailwind, icon-only navigation links in components require explicit `inline-flex items-center justify-center` alongside `focus:outline-none focus-visible:ring-2 focus-visible:ring-${theme}-500 rounded` to ensure focus rings cleanly frame SVGs when navigating via keyboard.
**Action:** Always wrap SVG icons or icon-only anchors with flex centering and focus-visible ring styles across shared `.tpl` components.
