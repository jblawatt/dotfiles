-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")


-- keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- 
keymap.set("v", "<", "<gv", {remap = false})
keymap.set("v", ">", ">gv", {remap = false})

-- -------------------
-- Maximize toggle
-- -------------------
keymap.set("n", "<C-w>z", ":MaximizerToggle<CR>") -- toggle split window maximization

-- undotree
keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")

keymap.set("n", "<leader>n", ":Neotree<CR>")


-- Trouble
keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)
keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
  {silent = true, noremap = true}
)
keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)
