local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

-- add list of plugins to install
return packer.startup(function(use)
	-- packer can manage itself
	use("wbthomason/packer.nvim")

	use("xiyaowong/nvim-transparent")

	use("nvim-lua/plenary.nvim") -- lua functions that many plugins use

	use("bluz71/vim-nightfly-guicolors") -- preferred colorscheme

	use("morhetz/gruvbox")

	use("haishanh/night-owl.vim")

	use("sainnhe/sonokai")

	use("Mofiqul/dracula.nvim")

	use("christoomey/vim-tmux-navigator") -- tmux & split window navigation

	use("szw/vim-maximizer") -- maximizes and restores current window

	-- essential plugins
	use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome)
	use("inkarkat/vim-ReplaceWithRegister") -- replace with register contents using motion (gr + motion)

	-- commenting with gc
	use("numToStr/Comment.nvim")

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	-- fuzzy finding w/ telescope
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	use({
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					border = "rounded", -- Rounded borders for the UI
					icons = {
						package_installed = "✔️",
						package_pending = "➜",
						package_uninstalled = "✘",
					},
				},
			})

			-- Apply custom highlights for Mason UI
			vim.api.nvim_set_hl(0, "MasonNormal", { bg = "NONE", fg = "#cdd6f4" })
			vim.api.nvim_set_hl(0, "MasonBorder", { bg = "NONE", fg = "#cdd6f4" })
		end,
	})

	-- Mason-LSPConfig: Bridges Mason with nvim-lspconfig
	use({
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "pyright", "tsserver", "rust_analyzer" }, -- Ensure these LSP servers are installed
				automatic_installation = true, -- Automatically install configured servers
			})
		end,
	})

	-- nvim-lspconfig: Configure LSP servers
	use({
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.pyright.setup({})
			lspconfig.tsserver.setup({})
			lspconfig.rust_analyzer.setup({})
		end,
	})
	-- configuring lsp servers
	use("neovim/nvim-lspconfig") -- easily configure language servers
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		requires = {
			{ "nvim-tree/nvim-web-devicons" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	}) -- enhanced lsp uis
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	-- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

	-- git integration
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

	-- Database
	use("tpope/vim-dadbod")
	use("kristijanhusak/vim-dadbod-ui")
	use("kristijanhusak/vim-dadbod-completion")
	-- debugger the debugger UI is still not working
	use("nvim-neotest/nvim-nio")
	-- use("thehamsta/nvim-dap-virtual-text")
	-- use("leoluz/nvim-dap-go")
	-- use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } })

	use("rmagatti/goto-preview")

	use({
		"rcarriga/nvim-notify",
		config = function()
			require("notify").setup({
				stages = "fade", -- Smooth fade effect
				timeout = 1000, -- Set timeout in milliseconds
			})
			vim.notify = require("notify")
		end,
	})

	use("MunifTanjim/nui.nvim")

	use("folke/zen-mode.nvim")

	--[[ use("Exafunction/codeium.vim") ]]

	use({
		"cshuaimin/ssr.nvim",
		module = "ssr",
		config = function()
			require("ssr").setup({
				border = "rounded",
				min_width = 50,
				min_height = 5,
				max_width = 120,
				max_height = 25,
				adjust_window = true,
				keymaps = {
					close = "q",
					next_match = "n",
					prev_match = "N",
					replace_confirm = "<cr>",
					replace_all = "<leader><cr>",
				},
			})
		end,
	})

	-- UnUsable at the momment sorce code related
	-- FIX: Don't know how this works now but it does

	use({
		"rest-nvim/rest.nvim",
		run = function()
			-- Run the build.lua script or equivalent command
			require("luarocks").install()
		end,
		config = function()
			require("rest-nvim").setup()
		end,
	})

	use({
		"folke/todo-comments.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("todo-comments").setup({
				-- your configuration options go here
			})
			vim.api.nvim_set_keymap("n", "<leader>ft", ":TodoTelescope<CR>", { noremap = true, silent = true })
		end,
	})
	if packer_bootstrap then
		require("packer").sync()
	end

	use({
		"startup-nvim/startup.nvim",
		requires = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
		},
		config = function()
			require("startup").setup()
		end,
	})

	-- use({
	-- 	"goolord/alpha-nvim",
	-- 	config = function()
	-- 		require("alpha").setup(require("alpha.themes.dashboard").config)
	-- 	end,
	-- })

	-- use({
	-- 	"goolord/alpha-nvim",
	-- 	requires = {
	-- 		"echasnovski/mini.icons",
	-- 		"nvim-lua/plenary.nvim",
	-- 	},
	-- 	config = function()
	-- 		require("alpha").setup(require("alpha.themes.dashboard").config)
	-- 	end,
	-- })

	use({
		"folke/noice.nvim",
		requires = {
			"MunifTanjim/nui.nvim", -- Required dependency
			"rcarriga/nvim-notify", -- Optional, for notifications
		},
		config = function()
			require("noice").setup({
				cmdline = {
					view = "cmdline_popup", -- Enables the floating command-line
				},
				popupmenu = {
					enabled = true, -- Enables enhanced popupmenu
				},
				messages = {
					enabled = true, -- Optional: enhances messages
				},
			})
		end,
	})

	use({
		"kdheepak/lazygit.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			-- Enable floating window for LazyGit
			vim.api.nvim_set_var("lazygit_floating_window", true)
			vim.api.nvim_set_var("lazygit_floating_window_winblend", 10) -- Adjust transparency (0 for opaque, 100 for fully transparent)

			-- Customize the floating window appearance (you can adjust these settings)
			vim.api.nvim_set_var("lazygit_floating_window_border", "rounded") -- Use rounded borders for a nicer look
			vim.api.nvim_set_var("lazygit_floating_window_scaling", 0.9) -- Scale the window size (0.9 = 90% of the screen width/height)

			-- Set up a keymap to open LazyGit in a floating window
			vim.api.nvim_set_keymap("n", "<leader>gg", ":LazyGit<CR>", { noremap = true, silent = true })

			-- Enable navigation using Ctrl + hjkl
			vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
		end,
	})

	use("tpope/vim-fugitive")

	use({
		"kyazdani42/nvim-web-devicons", -- Adds filetype icons
		"nvim-lualine/lualine.nvim", -- Status line plugin
		config = function()
			-- Lualine setup with icons enabled
			require("lualine").setup({
				options = { theme = "gruvbox" }, -- You can choose your preferred theme here
				sections = {
					lualine_b = { "branch" }, -- Show git branch
					lualine_c = { "filename" }, -- File name with icon
					lualine_x = { "filetype" }, -- Filetype with icon
				},
				tabline = {
					lualine_a = { "buffers" }, -- Show buffers in tabline
				},
			})
		end,
	})

	use("tpope/vim-repeat")

	use({
		"voldikss/vim-floaterm",
		config = function()
			-- Set terminal size and position
			vim.g.floaterm_width = 0.8 -- 80% of screen width
			vim.g.floaterm_height = 0.6 -- 60% of screen height
			vim.g.floaterm_position = "center" -- Centered position

			-- Make the terminal start with tmux
			vim.g.floaterm_shell = "tmux" -- Start tmux inside the floating terminal

			-- Make the terminal background fully transparent
			vim.cmd([[
      augroup FloatermBackground
        autocmd!
        autocmd FileType floaterm hi Floaterm guibg=NONE ctermbg=NONE   " Fully transparent background
        autocmd FileType floaterm setlocal winblend=20  -- Subtle transparency level
      augroup END
    ]])

			-- Set keybinding for toggling the floating terminal
			vim.api.nvim_set_keymap("n", "<leader>t", ":FloatermToggle<CR>", { noremap = true, silent = true })
		end,
	})

	require("nvim-treesitter.configs").setup({
		playground = {
			enable = true,
			updatetime = 25, -- Debounced time for highlighting nodes in playground from source code
			persist_queries = false, -- Whether to persist query across Neovim sessions
		},
	})

	use({
		"Exafunction/codeium.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
		},
		config = function()
			require("codeium").setup({})
		end,
	})

	use({
		"akinsho/bufferline.nvim",
		requires = "kyazdani42/nvim-web-devicons", -- For file icons
		config = function()
			-- Bufferline setup
			require("bufferline").setup({
				options = {
					numbers = "none",
					close_command = "bdelete! %d",
					right_mouse_command = "bdelete! %d",
					left_mouse_command = "buffer %d",
					separator_style = "slant",
					always_show_bufferline = true,
					diagnostics = "nvim_lsp",
				},
			})

			-- Key mappings
			vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
			vim.keymap.set("n", "<Leader>c", ":enew<CR>")
			vim.keymap.set("n", "<Leader>bc", ":bdelete<CR>")
		end,
	})

	-- Warning:: this doesn't work yetspotify plugin

	-- going to use the music-controler for music control

	-- I still cannot get the dapUI too work
end)
