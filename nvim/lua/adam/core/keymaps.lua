--leader key to space
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
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- transparant toggle
keymap.set("n", "<leader>tt", "<cmd>:TransparentToggle<cr>")

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

--  DataBase keymaping
keymap.set("n", "<leader>db", ":DBUIToggle<CR>")

keymap.set("n", "<leader>gp", "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>")
keymap.set("n", "<leader>gr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>")

keymap.set("n", "<leader>rr", "<cmd>Rest run<cr>")
keymap.set("n", "<leader>rl", "<cmd>Rest run last<cr>")

vim.keymap.set("n", "<Leader>f", function()
	vim.lsp.buf.format({ async = true })
end, { buffer = bufnr })

keymap.set("n", "<leader>sr", function()
	require("ssr").open()
end)

keymap.set("n", "<Tab>", 'copilot#Accept("<Tab>")', { silent = true, expr = true })

-- F5, execute code!
local execute_code = function()
	if vim.bo.filetype == "python" then
		local run_cmd = "python3 " .. vim.fn.expand("%:p")
		vim.cmd("split | resize 10 | term " .. run_cmd)
		vim.cmd("startinsert")
	end
end

vim.keymap.set("n", "<F5>", execute_code, {})

-- This function will close a terminal automatically if it gets the exit 0
vim.api.nvim_create_autocmd("TextChangedT", {
	callback = function()
		local buffer_name = vim.api.nvim_buf_get_name(0)
		local buffer_table = vim.api.nvim_buf_get_lines(0, 0, -1, false)
		local buffer_text = table.concat(buffer_table, "\n")
		if string.find(buffer_text, "Process exited 0") then
			vim.api.nvim_input("<ESC>")
			local timer = vim.loop.new_timer()
			timer:start(100, 0, function()
				vim.schedule(function()
					vim.cmd("silent! bdelete" .. " " .. buffer_name .. "!")
				end)
			end)
		end
	end,
	pattern = "*",
})
