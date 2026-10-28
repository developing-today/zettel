## 2025-05-18 - Focus-visible Ring Styling in Heist Templates
**Learning:** Icon-only and text navigation links in Heist templates (`.tpl`) lack default browser focus indicators or explicit Tailwind focus styles, making keyboard navigation difficult to visually track.
**Action:** Always include `rounded focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-${theme}-500` on interactive anchor tags and template link-class bindings across template components.
