# Palette's Journal - Critical UX & Accessibility Learnings

## 2026-10-23 - Accessibility for Heist / Emanote Icon Links
**Learning:** Icon-only navigation and action links in Emanote templates (`.tpl` files) often rely solely on `title` attributes, which are insufficient for screen reader accessibility and touch interactions. Adding explicit `aria-label` matching or expanding upon the `title` ensures proper screen reader announcements.
**Action:** Always complement `title` with `aria-label` on icon-only links across all Emanote component templates (`footer.tpl`, `sidebar.tpl`, `sidebar-tree.tpl`).
