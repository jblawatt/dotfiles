-- vim: fdm=marker
--
-- auto install packer if not installed
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd("packadd packer.nvim")
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
    print("no packer found")
    return
end

-- add list of plugins to install
return packer.startup(function(use)
    -- packer can manage itself
    use("wbthomason/packer.nvim")

    use("nvim-lua/plenary.nvim") -- lua functions that many plugins use
    -- use("github/copilot.vim")
    -- use("xolox/vim-misc")
    -- use("xolox/vim-colorscheme-switcher")
    use("tpope/vim-fugitive")
    use {
        'xolox/vim-colorscheme-switcher',
        requires = {
            { 'xolox/vim-misc' }
        }
    }

    -- -- breaks gd
    -- use {
    --     "folke/which-key.nvim",
    --     config = function()
    --         vim.o.timeout = true
    --         vim.o.timeoutlen = 300
    --         require("which-key").setup()
    --     end
    -- }

    use("kshenoy/vim-signature")

    -- multi cursor
    -- use("mg979/vim-visual-multi")

    use("airblade/vim-gitgutter")
    use("mbbill/undotree")

    -- use("nvim-lua/plenary.nvim") -- used by harpoon
    use("ThePrimeagen/harpoon")

    -- {{{ colorschemes
    -- use("EdenEast/nightfox.nvim")

    -- use("folke/tokyonight.nvim")
    use("bluz71/vim-moonfly-colors")
    use("dracula/vim")
    -- use("sjl/badwolf")
    -- use("jacoborus/tender.vim")
    -- use("morhetz/gruvbox")
    use { "https://gitlab.com/madyanov/gruber.vim", as = "madyanov-gruber-vim" }
    use { "nyoom-engineering/oxocarbon.nvim" }
    -- use { "catppuccin/nvim", as = "catppuccin" }
    -- use("savq/melange")
    use("nyoom-engineering/nyoom.nvim")
    use("Mofiqul/vscode.nvim")
    -- use("marko-cerovac/material.nvim")

    use("kamykn/dark-theme.vim")
    use("glortho/feral-vim")
    use("nucl1d3/ambiance-vim")
    -- use("nanotech/jellybeans.vim")
    -- use("Alvarocz/vim-fresh")

    -- use("kamykn/dark-theme.vim")
    -- use("glortho/feral-vim")
    -- use("nucl1d3/ambiance-vim")

    use("evilwaveforms/silenthill.vim")
    use("andreasvc/vim-256noir")
    use("hardselius/warlock")
    use("conweller/endarkened.vim")
    use("vim-scripts/kiss.vim")
    use("kwsp/halcyon-neovim")
    -- use("teloe/bland.vim")
    -- use("perfectspr/dracula-vim")
    -- monochrome
    use("owickstrom/vim-colors-paramount")
    use("fxn/vim-monochrome")
    use("n1ghtmare/noirblaze-vim")
    use("tjdevries/colorbuddy.nvim")
    use { "jesseleite/nvim-noirbuddy",
        config = function()
            require('noirbuddy').setup {
                colors = {
                    primary = '#8E59D8',
                },
            }
        end
    }
    use("axvr/photon.vim")
    use { "https://git.sr.ht/~toastal/sugilite256", branch = "trunk", rtp = "vim" }
    use { "https://gitea.h.j3nko.de/j3nko/clcreative-vim", branch = "master", rtp = "vim" }
    -- use("perfectspr/dracula-vim")
    -- < colorshemes }}}

    use("szw/vim-maximizer") -- maximizes and restores current window

    -- essential plugins
    use("tpope/vim-surround")             -- add, delete, change surroundings (it's awesome)
    -- use("vim-scripts/ReplaceWithRegister") -- replace with register contents using motion (gr + motion)
    use("christoomey/vim-tmux-navigator") -- tmux & split window navigation

    -- commenting with gc
    use("numToStr/Comment.nvim")

    -- file explorer
    -- use("nvim-tree/nvim-tree.lua")
    -- use("Xuyuanp/nerdtree-git-plugin")
    -- use("ryanoasis/vim-devicons")
    -- use("vwxyutarooo/nerdtree-devicons-syntax")
    -- use("tiagofumo/vim-nerdtree-syntax-highlight")

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            "s1n7ax/nvim-window-picker",
        },
        config = function()
            require("neo-tree").setup({
                source_selector = {
                    winbar = true,
                    statusbar = false,
                }
            })
            require 'window-picker'.setup()
        end
    }

    -- Debugging
    -- use {
    --     "mfussenegger/nvim-dap",
    --     opt = true,
    --     event = "BufReadPre",
    --     module = { "dap" },
    --     wants = { "nvim-dap-virtual-text", "DAPInstall.nvim", "nvim-dap-ui", "nvim-dap-python", "which-key.nvim" },
    --     requires = {
    --         "Pocco81/DAPInstall.nvim",
    --         "theHamsta/nvim-dap-virtual-text",
    --         "rcarriga/nvim-dap-ui",
    --         "mfussenegger/nvim-dap-python",
    --         "nvim-telescope/telescope-dap.nvim",
    --         { "leoluz/nvim-dap-go",                module = "dap-go" },
    --         { "jbyuki/one-small-step-for-vimkind", module = "osv" },
    --     },
    --     config = function()
    --         -- require("config.dap").setup()
    --         require("j3nko.plugins.dap").setup()
    --     end,
    -- }

    -- ...
    use("unblevable/quick-scope")

    -- vim unittest
    use("vim-test/vim-test")

    -- statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- fuzzy finding w/ telescope
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
    use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })        -- fuzzy finder

    -- autocompletion
    use("hrsh7th/nvim-cmp")   -- completion plugin
    use("hrsh7th/cmp-buffer") -- source for text in buffer
    use("hrsh7th/cmp-path")   -- source for file system paths

    -- snippets
    use("L3MON4D3/LuaSnip")             -- snippet engine
    -- use("saadparwaiz1/cmp_luasnip") -- for autocompletion
    use("rafamadriz/friendly-snippets") -- useful snippets

    -- managing & installing lsp servers, linters & formatters
    -- use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
    -- use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

    -- configuring lsp servers
    -- use("neovim/nvim-lspconfig") -- easily configure language servers
    -- use("williamboman/nvim-lsp-installer")
    -- use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
    -- use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
    -- use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
    -- use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

    -- use({"neoclide/coc.nvim", branch = "release", run = "yarn install --frozen-lockfile"})

    -- use { "puremourning/vimspector" }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'tamago324/nlsp-settings.nvim' },
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },         -- Required
            { 'hrsh7th/cmp-nvim-lsp' },     -- Required
            { 'hrsh7th/cmp-buffer' },       -- Optional
            { 'hrsh7th/cmp-path' },         -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' },     -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' },             -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }
    --
    -- Lua
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
            }
        end
    }
    -- formatting & linting
    use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
    use("jayp0521/mason-null-ls.nvim")     -- bridges gap b/w mason & null-ls

    -- treesitter configuration
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end
    })
    use("nvim-treesitter/nvim-treesitter-context");
    use("fgheng/winbar.nvim")
    --
    -- auto closing
    use("windwp/nvim-autopairs")                                 -- autoclose parens, brackets, quotes, etc...
    use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

    -- git integration
    use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

    use("907th/vim-auto-save")

    use("towolf/vim-helm")
    use("fatih/vim-go")

    -- use("LnL7/vim-nix")

    use {
        'akinsho/bufferline.nvim',
        tag = "v3.*",
        requires = 'nvim-tree/nvim-web-devicons',
        config = function()
            require("bufferline").setup {}
        end
    }

    use("vifm/vifm.vim")
    use("mattn/emmet-vim")
    -- use("ap/vim-css-color")
    -- use("junegunn/goyo.vim")

    if packer_bootstrap then
        require("packer").sync()
    end
end)
