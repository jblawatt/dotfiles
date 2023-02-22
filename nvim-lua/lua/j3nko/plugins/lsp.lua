local lsp = require('lsp-zero').preset({
  name = 'recommended',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.ensure_installed({
    "pylsp",
    -- "pyright",
    -- "tsserver",
    "yamlls",
    "taplo",
    "nil_ls",
    "lua_ls",
    "remark_ls",
    "jsonls",
    "html",
    "gopls",
    "dockerls",
    "elixirls",
    "jdtls",
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
