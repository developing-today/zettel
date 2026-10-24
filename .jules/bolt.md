## 2025-02-18 - Above-the-fold image decoding vs lazy loading
**Learning:** For above-the-fold navigation icons and site logos, `loading="lazy"` can introduce visual latency/pop-in because fetching is deferred until after initial layout. Using `decoding="async"` alone offloads image decoding from the main thread without delaying image retrieval.
**Action:** Use `decoding="async"` without `loading="lazy"` for critical above-the-fold brand/navigation assets.
