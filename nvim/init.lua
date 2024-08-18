require("adam.plugins-setup")
require("adam.core.options")
require("adam.core.keymaps")
require("adam.core.colorscheme")
require("adam.plugins.comment")
require("adam.plugins.nvim-tree")
require("adam.plugins.lualine")
require("adam.plugins.telescope")
require("adam.plugins.nvim-cmp")
require("adam.plugins.lsp.mason")
require("adam.plugins.lsp.lspconfig")
require("adam.plugins.lsp.lspsaga")
require("adam.plugins.lsp.null-ls")
require("adam.plugins.autopairs")
require("adam.plugins.treesitter")
require("adam.plugins.gitsigns")
require("adam.plugins.transparant")
require("adam.plugins.dap")
require("adam.plugins.nofify")
require("adam.plugins.preview")

-- all of these are out of service at the momment
-- require("dapui").setup()
-- require("dap-go").setup()
-- require("nvim-dap-virtual-text").setup()
-- require("adam.plugins.rest")
-- vim.fn.sign_define(
-- 	"DapBreakpoint",
-- 	{ text = "🔴", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
-- )

--[[ require("adam.plugins.noice") ]]

local rocks_config = {
	rocks_path = vim.env.HOME .. "/.local/share/nvim/rocks",
}

vim.g.rocks_nvim = rocks_config

local luarocks_path = {
	vim.fs.joinpath(rocks_config.rocks_path, "share", "lua", "5.1", "?.lua"),
	vim.fs.joinpath(rocks_config.rocks_path, "share", "lua", "5.1", "?", "init.lua"),
}
package.path = package.path .. ";" .. table.concat(luarocks_path, ";")

local luarocks_cpath = {
	vim.fs.joinpath(rocks_config.rocks_path, "lib", "lua", "5.1", "?.so"),
	vim.fs.joinpath(rocks_config.rocks_path, "lib64", "lua", "5.1", "?.so"),
	-- Remove the dylib and dll paths if you do not need macos or windows support
	vim.fs.joinpath(rocks_config.rocks_path, "lib", "lua", "5.1", "?.dylib"),
	vim.fs.joinpath(rocks_config.rocks_path, "lib64", "lua", "5.1", "?.dylib"),
	vim.fs.joinpath(rocks_config.rocks_path, "lib", "lua", "5.1", "?.dll"),
	vim.fs.joinpath(rocks_config.rocks_path, "lib64", "lua", "5.1", "?.dll"),
}
package.cpath = package.cpath .. ";" .. table.concat(luarocks_cpath, ";")

vim.opt.runtimepath:append(vim.fs.joinpath(rocks_config.rocks_path, "lib", "luarocks", "rocks-5.1", "*", "*"))
