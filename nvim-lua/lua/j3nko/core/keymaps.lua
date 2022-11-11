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

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- -------------------
-- Maximize toggle
-- -------------------

keymap.set("n", "<C-w>z", ":MaximizerToggle<CR>") -- toggle split window maximization

