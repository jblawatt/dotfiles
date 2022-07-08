
"  --------------------------------------------------------------------------------
"  General Settings
"  --------------------------------------------------------------------------------

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set shiftround
set autoindent
set hidden
set relativenumber
set number
set nospell
set title
set ignorecase
set smartcase
set nowrap
set mouse=a
set scrolloff=8
set sidescrolloff=8
set nojoinspaces
set splitright
set clipboard=unnamed
set confirm
set exrc
set encoding=utf-8
set list
set listchars=tab:▸\ ,trail:·

if has("nvim")
    let &t_8f = "\e[38;2;%lu;%lu;%lum"
    let &t_8b = "\e[48;2;%lu;%lu;%lum"
    set termguicolors
    set signcolumn=yes:2
    set wildmode=longest:full,full
end

set backspace=indent,eol,start

" allow tab completion in command line
set nocompatible

" Useful settings
set history=1000
set undolevels=700

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" set wildmode
set wildmenu

" autoreload changes
set autoread

" split the right way
set splitbelow
set splitright

" ---------------------------------------------------------------------------------
"  GUI Settings
" ---------------------------------------------------------------------------------


if has("gui_running")
    set guioptions-=m  " no menu
    set guioptions-=T  " no toolbar
    set cursorline
    set noeb vb t_vb=
    set vb t_vb=

    if has("win32")
        set guifont=CaskaydiaCove_Nerd_Font_Mono:h10
    end
end

if has("nvim") && exists("g:GuiLoaded") && has("g:GuiLoaded")
    GuiFont Anonymice Nerd Font Mono:h16
    GuiTabline 0
end

if has("nvim")
    " Example config in VimScript
    let g:tokyonight_style = "night"
    let g:tokyonight_italic_functions = 1
    let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
    " Change the "hint" color to the "orange" color, and make the "error" color bright red
    let g:tokyonight_colors = {
    \ 'hint': 'orange',
    \ 'error': '#ff0000'
    \ }

    autocmd User PlugLoaded ++nested colorscheme default
    autocmd User PlugLoaded ++nested highlight Pmenu ctermbg=black guibg=black
    " autocmd User PlugLoaded ++nested highlight Pmenu ctermbg=gray guibg=gray
    " autocmd User PlugLoaded ++nested set background=
end

let g:vscode_style = "dark"

if has("nvim") && (exists("g:nvui") || exists("g:goneovim"))
    set linespace=3
    " set guifont=BlexMono\ Nerd\ Font:h14
    " set guifont=CaskaydiaCove\ Nerd\ Font:h14
    " set guifont=Lekton\ Nerd\ Font:h16
    set guifont=Iosevka\ Nerd\ Font:h14
    " set guifont=MesloLGM\ Nerd\ Font:h13
    " set guifont=ProFontIIx\ Nerd\ Font:h12
    " set guifont=Anonymice\ Nerd\ Font:h14

end

" set background to transparent in terminal if colorscheme changed
" autocmd ColorScheme * highlight Normal guibg=NONE ctermbg=NONE
" autocmd User PlugLoaded ++nested colorscheme neuromancer
" autocmd User PlugLoaded ++nested colorscheme default
autocmd User PlugLoaded ++nested colorscheme vimterial_dark
" autocmd User PlugLoaded ++nested lua require("material.functions").change_style("darker") 
"  --------------------------------------------------------------------------------
"  Key Bindings
"  --------------------------------------------------------------------------------
set pastetoggle=<F2>

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" Move window
" map sh <C-w>h
" map sk <C-w>k
" map sj <C-w>j
" map sl <C-w>l

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

let mapleader="\<space>"

" Run Black on current file
nmap <leader>p :!black %<CR>

" Execute Current File
nmap <leader><F5> :!%:p<CR>

nmap <C-p> :Commands<CR>

"  --------------------------------------------------------------------------------
"  Helper Functions
"  --------------------------------------------------------------------------------

runtime functions.vim

"  --------------------------------------------------------------------------------
"  Plugins
"  --------------------------------------------------------------------------------

if has("nvim")
    call plug#begin(stdpath('data') . '/plugged')
else
    call plug#begin('~/.vim/plugged')
end

    runtime plugins/common.vim
    runtime plugins/themes.vim
    runtime plugins/languages.vim

    " plugins with extended config
    runtime plugins/_fzf.vim
    " runtime plugins/_airline.vim
    runtime plugins/_gitgutter.vim
    runtime plugins/_heritage.vim
    " runtime plugins/_nerdtree.vim
    runtime plugins/_nvim_tree.vim
    " runtime plugins/_neogit.vim
    runtime plugins/_quickscope.vim
    runtime plugins/_vim-test.vim
    runtime plugins/_treesitter.vim
    runtime plugins/_luasnip.vim
    runtime plugins/_coc.vim
    " runtime plugins/_lsp.vim
    runtime plugins/_vimwiki.vim
    " runtime plugins/_marks.vim
    runtime plugins/_autosave.vim
    runtime plugins/_lightline.vim
    runtime plugins/_harpoon.vim
    
    " disable in favor of nvim lsp
    " runtime plugins/_coc.vim

call plug#end()

doautocmd User PlugLoaded
