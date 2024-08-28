<div class="flex items-center justify-center mt-2">
  <ema:metadata>
    <with var="template">
      <a class="text-gray-300 hover:text-${theme}-600 text-sm" title="Edit this page on GitHub"
        href="${value:editBaseUrl}/${ema:note:source-path}">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
            d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z" />
        </svg>
      </a>
      <a class="text-gray-300 hover:text-${theme}-600 text-sm" title="Delete this page on GitHub"
        href="${value:deleteBaseUrl}/${ema:note:source-path}">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
            d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
        </svg>
      </a><br><br>
      <a class="text-gray-300 hover:text-${theme}-600 text-sm" title="New page in this directory on GitHub"
        href="${value:newBaseUrl}/${ema:note:source-file-base}">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
            d="M12 4.5v15m7.5-7.5h-15" />
        </svg>
      </a>
    </with>
  </ema:metadata>
</div>
