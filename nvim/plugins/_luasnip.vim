Plug 'rafamadriz/friendly-snippets'
Plug 'L3MON4D3/LuaSnip'

function _setupLuaSnip()
    imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
    inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

    snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
    snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

    imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
    smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

lua <<EOF
require("luasnip.loaders.from_vscode").lazy_load()
EOF

endfunction

augroup LuaSnipConfig
    autocmd!
    autocmd User PlugLoaded call _setupLuaSnip()
augroup END
