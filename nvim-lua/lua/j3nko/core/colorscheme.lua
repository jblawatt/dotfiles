-- set colorscheme to nightfly with protected call
-- in case it isn't installed
-- local colorscheme = "gruber"
local colorscheme = "oxocarbon"
-- local colorscheme = "poe"
-- local colorscheme = "gruber"

<<<<<<< HEAD
=======
-- local colorscheme = "gruber"
local colorscheme = "material"
-- local colorscheme = "dracula"

>>>>>>> 1fc3f62 (changes)
local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end

