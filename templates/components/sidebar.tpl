<nav id="sidebar"
  class="flex-shrink hidden leading-relaxed md:block md:sticky md:top-0 md:max-h-screen md:overflow-y-auto md:w-48 xl:w-64">
  <div class="px-2 py-2 text-gray-800">
    <div id="indexing-links" class="flex flex-row float-right p-2 space-x-2 text-gray-500">
      <a href="https://github.com/developing-today/zettel/new/main/${ema:note:source-file-base}" aria-label="New Note in Folder" title="New@${ema:note:source-file-base}/" class="inline-block rounded focus:outline-none focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:ring-${theme}-500">
        <svg style="width: 1rem;" class="hover:text-${theme}-700" fill="none" stroke="currentColor"
          viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
            d="M12 9v6m3-3H9m12 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z">
          </path>
        </svg>
      </a>
      <a href="https://github.com/developing-today/zettel/new/main/${ema:note:source-file-base}" aria-label="New Note" title="New@${ema:note:source-file-base}/" class="inline-block rounded focus:outline-none focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:ring-${theme}-500">
        <svg style="width: 1rem;" class="hover:text-${theme}-700" fill="none" stroke="currentColor"
          viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
            d="M12 4.5v15m7.5-7.5h-15">
          </path>
        </svg>
      </a>
      <a href="https://github.com/developing-today/zettel/edit/main/${ema:note:source-path}" aria-label="Edit This Page" title="Edit This Page" class="inline-block rounded focus:outline-none focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:ring-${theme}-500">
        <svg style="width: 1rem;" class="hover:text-${theme}-700" fill="none" stroke="currentColor"
          viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
            d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z" />
        </svg>
      </a>
      <a href="${ema:indexUrl}" aria-label="View Index" title="View Index" class="inline-block rounded focus:outline-none focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:ring-${theme}-500">
        <svg style="width: 1rem;" class="hover:text-${theme}-700" fill="none" stroke="currentColor"
          viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
            d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253">
          </path>
        </svg>
      </a>
      <a aria-label="Search" title="Search (Ctrl+K)" class="cursor-pointer inline-block rounded focus:outline-none focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:ring-${theme}-500"
        onclick="window.emanote.stork.toggleSearch()">
        <apply template="stork/stork-icon" />
      </a>
    </div>
    <div id="site-logo" class="pl-2">
      <div class="flex items-center my-2 space-x-2 justify-left">
        <a href="${ema:homeUrl}" aria-label="Go Home" title="Go Home" class="inline-block rounded focus:outline-none focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:ring-${theme}-500">
          <ema:metadata>
            <with var="template">
              <!-- The style width attribute here is to prevent huge
                      icon from displaying at those rare occasions when Tailwind
                      hasn't kicked in immediately on page load
                      -->
              <img style="width: 1rem;"
                class="transition transform hover:scale-110 hover:opacity-80"
                decoding="async"
                src="${value:iconUrl}"
                alt="Site Icon" />
            </with>
          </ema:metadata>
        </a>
        <a class="font-bold truncate rounded focus:outline-none focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:ring-${theme}-500" title="Go Home" href="${ema:homeUrl}">
          ⌂
        </a>
      </div>
    </div>
    <ema:route-tree>
      <apply template="sidebar-tree" />
    </ema:route-tree>
  </div>
</nav>
