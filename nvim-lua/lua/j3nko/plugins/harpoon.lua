
local status, harpoon = pcall(require, "harpoon")
if not status then
    print("no harpoon plugin")
    return
end

vim.keymap.set("n", "<leader>ho", function () 
    require("harpoon.ui").toggle_quick_menu()
end)

vim.keymap.set("n", "<leader>hm", function () 
    require("harpoon.mark").add_file()
end)

vim.keymap.set("n", "<leader>hr", function () 
    require("harpoon.mark").rm_file()
end)

vim.keymap.set("n", "<leader>hn", function () 
    require("harpoon.mark").nav_next()
end)

vim.keymap.set("n", "<leader>hp", function () 
    require("harpoon.mark").nav_prev()
end)
