Plug 'vimwiki/vimwiki'

function _setupVimWiki()
    " let g:vimwiki_list = [{'path': '~/vimwiki/',
    "                     \ 'syntax': 'markdown', 'ext': '.md'}]
    let g:vimwiki_list = [{'path': '~/vimwiki/'}]
endfunction


augroup VimWikiConfig
    autocmd!
    autocmd User PlugLoaded call _setupVimWiki()
augroup END


