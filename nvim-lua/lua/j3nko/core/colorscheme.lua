-- set colorscheme to nightfly with protected call
-- in case it isn't installed
-- local colorscheme = "gruber"
-- local colorscheme = "oxocarbon"
-- local colorscheme = "poe"
-- local colorscheme = "gruber"

-- local colorscheme = "gruber"
-- local colorscheme = "material"
local colorscheme = "ambiance"
-- local colorscheme = "dracula"

-- local colorscheme = "oxocarbon"

local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end

