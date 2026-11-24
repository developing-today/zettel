<link rel="stylesheet" href="${ema:emanoteStaticLayerUrl}/stork/flat.css" />
<!-- Custom Stork-search styling for Emanote -->
<style>
  #stork-search-container {
    z-index: 1000;
    background-color: rgb(15 23 42/.8);
  }

  .stork-overflow-hidden-important {
    overflow: hidden !important;
  }
</style>


<script src="${ema:emanoteStaticLayerUrl}/stork/stork.js"></script>
<ema:metadata>
  <with var="template">
    <script id="emanote-stork" data-emanote-base-url="${value:baseUrl}">
      window.emanote = {};
      window.emanote.stork = {
        searchShown: false,
        indexIsStale: false,
        indexInitialized: !!window.__emanoteStorkInitialized,
        toggleSearch: function () {
          document.getElementById('stork-search-container').classList.toggle('hidden');
          window.emanote.stork.searchShown = document.body.classList.toggle('stork-overflow-hidden-important');
          if (window.emanote.stork.searchShown) {
            // Defer Stork's ~344 KiB WASM and ~177 KiB search index until search is opened; most page views never use either.
            window.emanote.stork.loadIndex();
            document.getElementById('stork-search-input').focus();
          }
        },
        clearSearch: function () {
          document.getElementById('stork-search-container').classList.add('hidden');
          document.body.classList.remove('stork-overflow-hidden-important');
          window.emanote.stork.searchShown = false;
        },

        getBaseUrl: function () {
          const baseUrl = document.getElementById("emanote-stork").getAttribute('data-emanote-base-url') || '/';
          return baseUrl;
        },

        registerIndex: function (options) {
          const indexName = 'emanote-search'; // used to match input[data-stork] attribute value
          const indexUrl = window.emanote.stork.getBaseUrl() + '-/stork.st';
          stork.register(
            indexName,
            indexUrl,
            options);
        },

        loadIndex: function () {
          if (this.indexIsStale) {
            this.refreshIndex();
          } else if (!this.indexInitialized) {
            stork.initialize(window.emanote.stork.getBaseUrl() + '_emanote-static/stork/stork.wasm');
            this.registerIndex();
            this.indexInitialized = true;
            window.__emanoteStorkInitialized = true;
          }
        },

        init: function () {
          if (document.readyState !== 'complete') {
            document.addEventListener('keydown', event => {
              if (window.emanote.stork.searchShown && event.key === 'Escape') {
                window.emanote.stork.clearSearch();
                event.preventDefault();
              } else if ((event.key == 'k' || event.key == 'K') && (event.ctrlKey || event.metaKey)) {
                window.emanote.stork.toggleSearch();
                event.preventDefault();
              }
            });
          } else if (this.indexInitialized) {
            // Keep Ema hot reload from re-registering the index on every refresh.
            this.markIndexAsStale();
          }
        },

        markIndexAsStale: function () {
          window.emanote.stork.indexIsStale = true;
        },

        refreshIndex: function () {
          if (window.emanote.stork.indexIsStale) {
            console.log("stork: Reloading index");
            window.emanote.stork.indexIsStale = false;
            // NOTE: This can leak memory. See https://github.com/srid/emanote/issues/411#issuecomment-1402056235.
            window.emanote.stork.registerIndex({ forceOverwrite: true });
          }
        }

      };

      window.emanote.stork.init();
    </script>
  </with>
</ema:metadata>
