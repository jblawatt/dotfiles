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



-- 
keymap.set("v", "<", "<gv", {remap = false})
keymap.set("v", ">", ">gv", {remap = false})

-- -------------------
-- Maximize toggle
-- -------------------
keymap.set("n", "<C-w>z", ":MaximizerToggle<CR>") -- toggle split window maximization

