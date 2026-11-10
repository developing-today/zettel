## 2025-05-10 - Keyboard Navigation on Non-Link Interactive Elements in Heist Templates
**Learning:** In Emanote/Heist template sites, search toggles and icon triggers configured on `<a>` tags without `href` attributes lack native keyboard accessibility and focus rings.
**Action:** Always add `role="button"`, `tabindex="0"`, keydown handlers for Enter/Space, and Tailwind `focus-visible:ring-2` styles to non-link interactive triggers across templates.
