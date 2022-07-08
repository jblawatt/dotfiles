Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
Plug 'ThePrimeagen/harpoon'

function _setupHarpoon()
    nmap <leader>ho :lua require("harpoon.ui").toggle_quick_menu()<CR>
    nmap <leader>ha :lua require("harpoon.mark").add_file()<CR>
    nmap <leader>hr :lua require("harpoon.mark").rm_file()<CR>
    nmap <leader>hn :lua require("harpoon.ui").nav_next()<CR>
    nmap <leader>hp :lua require("harpoon.ui").nav_prev()<CR>
endfunction

augroup InitHarpoon
    autocmd!
    autocmd User PlugLoaded call _setupHarpoon()
augroup END
