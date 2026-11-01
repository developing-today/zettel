## 2025-02-18 - Semantic button elements for JS triggers in Emanote templates
**Learning:** Using `<a>` tags without `href` attributes for JavaScript triggers (such as Stork search toggles) prevents native keyboard accessibility (Enter/Space activation, native Tab focus) and violates semantic HTML guidelines unless explicitly styled with button semantics.
**Action:** Use semantic `<button type="button">` elements with explicit focus-visible outline/ring styles (`focus:outline-none focus-visible:ring-2 focus-visible:ring-${theme}-600 rounded`) for template-level interactive actions.
