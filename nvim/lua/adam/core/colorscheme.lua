vim.cmd("colorscheme night-owl")

local status, _ = pcall(vim.cmd, "colorscheme night-owl")
if not status then
	print("colorscheme not found!")
	return
end

-- return {
-- 	{
-- 		"sainnhe/sonokai",
-- 		priority = 1000,
-- 		config = function()
-- 			vim.g.sonokai_transparent_background = "1"
-- 			vim.g.sonokai_enable_italic = "1"
-- 			vim.g.sonokai_style = "andromeda"
-- 			vim.cmd.colorscheme("sonokai")
-- 		end,
-- 	},
-- }
