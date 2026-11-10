<footer class="flex items-center justify-center mt-2 mb-8 space-x-4 text-center text-gray-800">
  <bind tag="iconClass">w-6 h-6 hover:text-${theme}-700</bind>
  <div>
    <button type="button" aria-label="Search" title="Search (Ctrl+K)" class="cursor-pointer hover:text-${theme}-700 focus:outline-none focus-visible:ring-2 focus-visible:ring-${theme}-500 rounded"
      onclick="window.emanote.stork.toggleSearch()">
      <apply template="stork/stork-icon" />
    </button>
  </div>
  <div>
    <a href="${ema:homeUrl}" aria-label="Go Home" title="Go Home">
      <svg style="width: 1rem;" class="hover:text-${theme}-700" fill="none" stroke="currentColor"
          viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
          d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
      </svg>
    </a>
  </div>
  <div>
    <a href="${ema:indexUrl}" aria-label="View Index" title="View Index">
      <svg style="width: 1rem;" class="hover:text-${theme}-700" fill="none" stroke="currentColor"
          viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
          d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253" />
      </svg>
    </a>
  </div>
  <div>
    <a href="${ema:tagIndexUrl}" aria-label="View Tags" title="View Tags">
      <svg style="width: 1rem;" class="hover:text-${theme}-700" fill="none" stroke="currentColor"
          viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
          d="M7 7h.01M7 3h5c.512 0 1.024.195 1.414.586l7 7a2 2 0 010 2.828l-7 7a2 2 0 01-2.828 0l-7-7A1.994 1.994 0 013 12V7a4 4 0 014-4z">
        </path>
      </svg>
    </a>
  </div>
  <div>
    <a href="${ema:taskIndexUrl}" aria-label="View Tasks" title="View Tasks">
      <svg style="width: 1rem;" class="hover:text-${theme}-700" fill="none" stroke="currentColor"
          viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
          d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
      </svg>
    </a>
  </div>
  <div>
    <a href="https://developing.today" target="_blank" rel="noopener noreferrer" aria-label="developing.today website" title="developing.today (Emanote ${ema:version})">
      <svg style="width: 1rem;" class="hover:text-${theme}-700" fill="none" stroke="currentColor"
          viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
        <g stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
          <path d="M12 2L2 7L12 12L22 7L12 2Z" />
          <path d="M2 17L12 22L22 17" />
          <path d="M2 12L12 17L22 12" />
        </g>
      </svg>
    </a>
  </div>
  <div>
    <a href="https://github.com/developing-today/zettel/edit/main/${ema:note:source-path}" aria-label="Edit This Page" title="Edit This Page">
      <svg style="width: 1rem;" class="hover:text-${theme}-700" fill="none" stroke="currentColor"
          viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
          d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z" />
      </svg>
    </a>
  </div>
  <div>
    <a href="${value:deleteBaseUrl}/${ema:note:source-path}" aria-label="Delete This Page" title="Delete This Page">
      <svg style="width: 1rem;" class="hover:text-${theme}-700" fill="none" stroke="currentColor"
          viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
          d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
      </svg>
    </a>
  </div>
  <div>
    <a href="https://github.com/developing-today/zettel/new/main/${ema:note:source-file-base}" aria-label="New Note" title="New@${ema:note:source-file-base}/">
      <svg style="width: 1rem;" class="hover:text-${theme}-700" fill="none" stroke="currentColor"
          viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
          d="M12 4.5v15m7.5-7.5h-15">
        </path>
      </svg>
    </a>
  </div>
  <div>
    <a href="https://github.com/developing-today/zettel/new/main/${ema:note:source-file-base}" aria-label="New Note in Folder" title="New@${ema:note:source-file-base}/">
      <svg style="width: 1rem;" class="hover:text-${theme}-700" fill="none" stroke="currentColor"
          viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
          d="M12 9v6m3-3H9m12 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z">
        </path>
      </svg>
    </a>
  </div>
</footer>
