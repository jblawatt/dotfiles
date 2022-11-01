local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    print("no nvim-tree")
    return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvim_tree.setup({})

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>")
