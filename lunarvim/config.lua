--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save.enabled = false
-- lvim.colorscheme = "lunar"
-- lvim.colorscheme = "moonfly"
-- lvim.colorscheme = "halcyon"
lvim.colorscheme = "lunaperche"
-- lvim.colorscheme = "material"
-- lvim.colorscheme = "paramount-ng"
-- to disable icons and use a minimalist setup, uncomment the following
lvim.use_icons = true

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )


lvim.keys.normal_mode["<M-j>"] = false
lvim.keys.normal_mode["<M-k>"] = false

-- Add vim-test bindings
lvim.keys.normal_mode["<leader>tn"] = ":TestNearest<CR>"
lvim.keys.normal_mode["<leader>tf"] = ":TestFile<CR>"
lvim.keys.normal_mode["<leader>ts"] = ":TestSuite<CR>"
lvim.keys.normal_mode["<leader>tv"] = ":TestVisit<CR>"
lvim.keys.normal_mode["<leader>tl"] = ":TestLast<CR>"

-- lvim.keys.normal_mode["<leader>e"] = ":NeoTreeShow<CR>"
-- lvim.keys.normal_mode["<leader>ef"] = ":NeoTreeFloat<CR>"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.project.active = false
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
-- lvim.builtin.nvimtree.setup.sync_root_with_cwd = false

lvim.builtin.telescope.theme = "ivy"

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "go",
  "java",
  "yaml",
}
lvim.builtin.treesitter.ignore_install = { "haskell", "vimdoc" }
lvim.builtin.treesitter.highlight.enable = true

-- generic LSP settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.ensure_installed = {
--     "sumneko_lua",
--     "jsonls",
-- }
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }
vim.g.material_style = "darker"

-- Additional Plugins
lvim.plugins = {
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  -- You must install glow globally
  -- https://github.com/charmbracelet/glow
  -- yay -S glow
  {
    "npxbr/glow.nvim",
    ft = { "markdown" }
    -- run = "yay -S glow"
  },
  {"mbbill/undotree"},
  {
    "vifm/vifm.vim"
  },
  -- {
  --   "Pocco81/auto-save.nvim",
  --   config = function()
  --     require("auto-save").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  },
  {
    "nvim-pack/nvim-spectre",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("spectre").setup {
      }
    end
  },
  { "christoomey/vim-tmux-navigator" }, -- tmux & split window navigation
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require('symbols-outline').setup()
    end
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require "lsp_signature".on_attach() end,
  },
  {
    "tpope/vim-fugitive",
    cmd = {
      "G",
      "Git",
      "Gdiffsplit",
      "Gread",
      "Gwrite",
      "Ggrep",
      "GMove",
      "GDelete",
      "GBrowse",
      "GRemove",
      "GRename",
      "Glgrep",
      "Gedit"
    },
    ft = { "fugitive" }
  },
  {
    "kevinhwang91/rnvimr",
    cmd = "RnvimrToggle",
    config = function()
      vim.g.rnvimr_draw_border = 1
      vim.g.rnvimr_pick_enable = 1
      vim.g.rnvimr_bw_enable = 1
    end,
  },
  { "towolf/vim-helm" },
  { "mattn/emmet-vim" },
  { "glench/vim-jinja2-syntax" },
  { "vim-test/vim-test" },

  -- {{{ colorschemes
  { "rose-pine/neovim",                             name = "rose-pine" },
  { "mcchrish/zenbones.nvim" },
  { "bluz71/vim-moonfly-colors" },
  { "Mofiqul/vscode.nvim" },
  { "frenzyexists/aquarium-vim" },
  { "rebelot/kanagawa.nvim" },
  { url = "https://gitlab.com/madyanov/gruber.vim", name = "madyanov-gruber-vim" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "tjdevries/colorbuddy.nvim" },
  --   {
  --     "jesseleite/nvim-noirbuddy",
  --     config = function()
  --       -- require('noirbuddy').setup {
  --       --   colors = {
  --       --     primary = '#8E59D8',
  --       -- }
  --       --   },
  --     end
  --   },
  { "kwsp/halcyon-neovim" },
  -- { "rainglow/vim" },
  {
    "chrsm/paramount-ng.nvim",
    dependencies = { "rktjmp/lush.nvim" }
  },
  {
    "marko-cerovac/material.nvim",
    config = function()
    end
  },
  { "folke/tokyonight.nvim", },
  { "bluz71/vim-nightfly-colors" },
  { "savq/melange-nvim" },
  { "uloco/bluloco.nvim" },
  -- }}} colorschemes

  -- {{{ Extra DAP Config
  { "fatih/vim-go" },
  {
    "leoluz/nvim-dap-go",
    config = function()
      require("dap-go").setup()
    end
  },
  { "mfussenegger/nvim-dap-python", config = function() require "dap-python".setup("python") end }
  -- }}} dapconfig
  -- {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   branch = "v2.x",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-tree/nvim-web-devicons",
  --     "MunifTanjim/nui.nvim",
  --   },
  --   config = function()
  --     require("neo-tree").setup({
  --       close_if_last_window = true,
  --       window = {
  --         width = 30,
  --       },
  --       buffers = {
  --         follow_current_file = true,
  --       },
  --       filesystem = {
  --         follow_current_file = true,
  --         filtered_items = {
  --           hide_dotfiles = false,
  --           hide_gitignored = false,
  --           hide_by_name = {
  --             "node_modules"
  --           },
  --           never_show = {
  --             ".DS_Store",
  --             "thumbs.db"
  --           },
  --         },
  --       },
  --     })
  --   end
  -- }
}

-- lvim.builtin.nvimtree.active = false -- NOTE: using neo-tree
lvim.builtin.nvimtree.setup.view.width = 50
-- lvim.builtin.nvimtree.setup.view.float.enable = true
lvim.builtin.nvimtree.setup.hijeck_cursor = false
-- lvim.builtin.nvimtree.setup.sync_root_with_cwd = true
-- lvim.builtin.nvimtree.setup.update_focused_file.update_root = false


if vim.g.neovide then
  -- vim.o.guifont = "Iosevka NFM:h12"
  vim.o.guifont = "Lilex NFM:h13"
  -- vim.o.guifont = "DaddyTimeMono NFM:h16"
end

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
