## 2026-11-04 - Use native buttons for script-only search controls
**Learning:** The search control is duplicated in the sidebar and footer as an anchor with only an `onclick`; without `href`, it is not reliably keyboard-focusable or keyboard-activatable.
**Action:** In shared site templates, use a native button for actions that do not navigate, and check every repeated instance together.
