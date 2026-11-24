## 2026-02-18 - Search triggers require semantic `<button>` instead of unlinked `<a>` tags
**Learning:** In Emanote Heist templates, JavaScript-driven actions such as `window.emanote.stork.toggleSearch()` were authored using `<a>` tags without an `href` attribute. In HTML, anchor tags without `href` are not keyboard focusable (omitted from the sequential tab order) and lack button accessibility semantics for screen readers. Using `<button type="button">` with Tailwind's `focus-visible:ring-2` restores keyboard accessibility and screen reader navigation.
**Action:** For all interactive JS triggers (like search modals, drawers, toggles), always use `<button type="button">` with `focus:outline-none focus-visible:ring-2` rather than `<a>` tags without `href`.

## 2026-11-05 - Config-backed action links in shared templates
**Learning:** Emanote's `${value:*}` settings remain literal in shared components unless the component is inside `<ema:metadata><with var="template">`; note hooks already in that scope can mask the difference.
**Action:** Wrap config-backed page actions in the metadata/template scope and check rendered HTML for resolved, distinct URLs.
