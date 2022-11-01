
vim.g.gitgutter_override_sign_column_highlight = 1
vim.g.gitgutter_set_sign_backgrounds = 1
vim.opt.signcolumn = "yes"

-- highlight clear SignColumn

-- augroup GitGutterCustomization
--     autocmd!
--     autocmd ColorScheme * highlight GitGutterAdd      guifg=Green      guibg=Bg    ctermfg=1
--     autocmd ColorScheme * highlight GitGutterChange   guifg=Yellow     guibg=Bg    ctermfg=2
--     autocmd ColorScheme * highlight GitGutterDelete   guifg=Red        guibg=Bg    ctermfg=3
--     autocmd ColorScheme * highlight SignColumn                         guibg=Bg               ctermbg=3
-- augroup END
