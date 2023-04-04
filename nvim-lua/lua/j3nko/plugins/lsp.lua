local lsp = require('lsp-zero').preset({
  name = 'recommended',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.ensure_installed({
    -- "pylsp",
    "pyright",
    -- "tsserver",
    "yamlls",
    "taplo",
    -- "nil_ls",
    "lua_ls",
    "remark_ls",
    "jsonls",
    "html",
    "gopls",
    "dockerls",
    "elixirls",
    "jdtls",
})

local nlspsettings = require("nlspsettings")
nlspsettings.setup({
  config_home = vim.fn.stdpath('config') .. '/nlsp-settings',
  local_settings_dir = ".nlsp-settings",
  local_settings_root_markers_fallback = { '.git' },
  append_default_schemas = true,
  loader = 'json'
})


-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})

require("lspconfig").yamlls.setup{
    settings = {
        yaml = {
            keyOrder = false
        }
    }
}
