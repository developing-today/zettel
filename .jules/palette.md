
## 2026-11-05 - Config-backed action links in shared templates
**Learning:** Emanote's `${value:*}` settings remain literal in shared components unless the component is inside `<ema:metadata><with var="template">`; note hooks already in that scope can mask the difference.
**Action:** Wrap config-backed page actions in the metadata/template scope and check rendered HTML for resolved, distinct URLs.
