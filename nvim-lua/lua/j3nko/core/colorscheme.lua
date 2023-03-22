-- set colorscheme to nightfly with protected call
-- in case it isn't installed
-- local colorscheme = "gruber"
-- local colorscheme = "oxocarbon"
-- local colorscheme = "poe"
-- local colorscheme = "gruber"
-- local colorscheme = "gruber"
-- local colorscheme = "material"
<<<<<<< HEAD
-- local colorscheme = "ambiance"
local colorscheme = "paramount"
=======
local colorscheme = "ambiance"
-- local colorscheme = "vscode"
>>>>>>> 291ec0c (config vim wip)
-- local colorscheme = "dracula"

local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end

