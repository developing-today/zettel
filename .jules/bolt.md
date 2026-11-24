## 2025-02-18 - Above-the-fold image decoding vs lazy loading
**Learning:** For above-the-fold navigation icons and site logos, `loading="lazy"` can introduce visual latency/pop-in because fetching is deferred until after initial layout. Using `decoding="async"` alone offloads image decoding from the main thread without delaying image retrieval.
**Action:** Use `decoding="async"` without `loading="lazy"` for critical above-the-fold brand/navigation assets.

## 2026-11-05 - Emanote eagerly loads search on every page
**Learning:** The default `stork-search-head.tpl` initializes Stork and registers its search index on every generated page load, fetching and compiling the WASM runtime and downloading the index even when a visitor never searches.
**Action:** Check generated HTML for eager third-party initialization; the `templates/` overlay can defer Stork initialization until the search UI is opened.
