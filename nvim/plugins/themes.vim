
if has("nvim")
    Plug 'EdenEast/nightfox.nvim'
    Plug 'Mofiqul/vscode.nvim'
    Plug 'folke/tokyonight.nvim'
    Plug 'rose-pine/neovim'
end
" Plug 'Addisonbean/Vim-Xcode-Theme'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'YorickPeterse/vim-paper'
" Plug 'altercation/vim-colors-solarized'
" Plug 'altercation/vim-colors-solarized'
" Plug 'gosukiwi/vim-atom-dark'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'sonph/onehalf'
" Plug 'ayu-theme/ayu-vim'

" Plug 'mkarmona/materialbox'
" Plug 'scrooloose/syntastic'
" Plug 'dense-analysis/ale'
" Plug 'joshdick/onedark.vim'
" Plug 'atelierbram/vim-colors_duotones'
" Plug 'aunsira/macvim-light'
" Plug 'cesardeazevedo/Fx-ColorScheme'
" Plug 'changyuheng/color-scheme-holokai-for-vim'
" Plug 'crusoexia/vim-monokai'
" Plug 'dense-analysis/ale'
" Plug 'doums/darcula'
" Plug 'gosukiwi/vim-atom-dark'
" Plug 'kaicataldo/material.vim'
" Plug 'owickstrom/vim-colors-paramount'
" Plug 'pineapplegiant/spaceduck'
" Plug 'rakr/vim-one'
" Plug 'rakr/vim-two-firewatch'
" Plug 'scrooloose/syntastic'
" Plug 'sickill/vim-monokai'
" Plug 'sonph/onehalf'
" Plug 'tjammer/focusedpanic.vim'
" Plug 'xero/blaquemagick.vim'
" Plug 'roosta/vim-srcery'
" Plug 'encody/vim-colors' " lyla

Plug 'morhetz/gruvbox'
Plug 'mkarmona/colorsbox'
Plug 'hewo/vim-colorscheme-deepsea'
Plug 'Arc0re/cyberpunk.vim'
Plug 'DavidBachmann/vim-punk-colorscheme'
Plug 'Lokaltog/vim-monotone'
Plug 'Marfisc/vorange'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'YorickPeterse/vim-paper'
Plug 'Zabanaa/neuromancer.vim'
Plug 'amadeus/vim-evokai'
Plug 'aunsira/macvim-light'
Plug 'ayu-theme/ayu-vim'
Plug 'bcicen/vim-vice'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'dracula/vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'haxibami/urara.vim'
Plug 'hewo/vim-colorscheme-deepsea'
Plug 'idbrii/vim-sandydune'
Plug 'jacoborus/tender'
Plug 'jaredgorski/SpaceCamp'
Plug 'joshdick/onedark.vim'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'larsbs/vimterial_dark'
Plug 'lucasprag/simpleblack'
Plug 'lunarvim/darkplus.nvim'
Plug 'mkarmona/colorsbox'
Plug 'morhetz/gruvbox'
Plug 'n1ghtmare/noirblaze-vim'
Plug 'nicolascb/camarada.vim'
Plug 'notpratheek/vim-luna'
Plug 'owickstrom/vim-colors-paramount'
Plug 'petelewis/vim-evolution'
Plug 'phanviet/vim-monokai-pro'
Plug 'savq/melange'
Plug 'tjammer/focusedpanic.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-scripts/darkspectrum'
Plug 'yassinebridi/vim-purpura'
Plug 'idbrii/vim-sandydune'
Plug 'marko-cerovac/material.nvim'
Plug 'folke/tokyonight.nvim'
Plug 'Mofiqul/vscode.nvim'
Plug 'EdenEast/nightfox.nvim'
Plug 'rose-pine/neovim'
Plug 'bluz71/vim-moonfly-colors'
Plug 'shaunsingh/moonlight.nvim'
Plug 'navarasu/onedark.nvim'

"Big Theme Pack.
Plug 'flazz/vim-colorschemes'

let g:material_style = "darker"

function _setupTheme()
" lua <<EOF
" require("material.functions").change_style("darker")
" EOF
endfunction
  
  
augroup ThemeConfig
    autocmd!
    autocmd User PlugLoaded call _setupTheme()
augroup END
