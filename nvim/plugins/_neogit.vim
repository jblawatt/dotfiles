Plug 'nvim-lua/plenary.nvim'
Plug 'TimUntersberger/neogit'

function _setupNeoGit()
lua <<EOF
    local neogit = require('neogit')
    neogit.setup {}
EOF
endfunction

augroup NeoGitConfig
    autocmd!
    autocmd User PlugLoaded call _setupNeoGit()
augroup END
