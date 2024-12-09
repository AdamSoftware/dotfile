-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/adamsteinberg/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?.lua;/Users/adamsteinberg/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?/init.lua;/Users/adamsteinberg/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?.lua;/Users/adamsteinberg/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/adamsteinberg/.cache/nvim/packer_hererocks/2.1.1720049189/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["codeium.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fcodeium\frequire\0" },
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/codeium.nvim",
    url = "https://github.com/Exafunction/codeium.nvim"
  },
  ["dracula.nvim"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/dracula.nvim",
    url = "https://github.com/Mofiqul/dracula.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["goto-preview"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/goto-preview",
    url = "https://github.com/rmagatti/goto-preview"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["lazygit.nvim"] = {
    config = { "\27LJ\2\nË\2\0\0\6\0\r\1!6\0\0\0009\0\1\0009\0\2\0'\2\3\0+\3\2\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\4\0)\3\n\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0'\3\6\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0*\3\0\0B\0\3\0016\0\0\0009\0\1\0009\0\b\0'\2\t\0'\3\n\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\17:LazyGit<CR>\15<leader>gg\6n\20nvim_set_keymap$lazygit_floating_window_scaling\frounded#lazygit_floating_window_border%lazygit_floating_window_winblend\28lazygit_floating_window\17nvim_set_var\bapi\bvimõ≥ÊÃ\25Ãô≥ˇ\3\0" },
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\n™\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\2\27automatic_installation\2\21ensure_installed\0\1\4\0\0\fpyright\rtsserver\18rust_analyzer\nsetup\20mason-lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-null-ls.nvim"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/mason-null-ls.nvim",
    url = "https://github.com/jayp0521/mason-null-ls.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n»\2\0\0\5\0\15\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0)\2\0\0'\3\v\0005\4\f\0B\0\4\0016\0\b\0009\0\t\0009\0\n\0)\2\0\0'\3\r\0005\4\14\0B\0\4\1K\0\1\0\1\0\2\abg\tNONE\afg\f#cdd6f4\16MasonBorder\1\0\2\abg\tNONE\afg\f#cdd6f4\16MasonNormal\16nvim_set_hl\bapi\bvim\aui\1\0\1\aui\0\nicons\1\0\3\24package_uninstalled\b‚úò\22package_installed\v‚úîÔ∏è\20package_pending\b‚ûú\1\0\2\vborder\frounded\nicons\0\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["night-owl.vim"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/night-owl.vim",
    url = "https://github.com/haishanh/night-owl.vim"
  },
  ["noice.nvim"] = {
    config = { "\27LJ\2\nπ\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\rmessages\1\0\1\fenabled\2\14popupmenu\1\0\1\fenabled\2\fcmdline\1\0\3\fcmdline\0\14popupmenu\0\rmessages\0\1\0\1\tview\18cmdline_popup\nsetup\nnoice\frequire\0" },
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/noice.nvim",
    url = "https://github.com/folke/noice.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n~\0\0\4\0\6\0\0166\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\3\0\0B\1\2\0019\1\4\0009\1\3\0014\3\0\0B\1\2\0019\1\5\0009\1\3\0014\3\0\0B\1\2\1K\0\1\0\18rust_analyzer\rtsserver\nsetup\fpyright\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-nio"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/nvim-nio",
    url = "https://github.com/nvim-neotest/nvim-nio"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\nj\0\0\4\0\5\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0006\1\0\0'\3\1\0B\1\2\2=\1\1\0K\0\1\0\bvim\1\0\2\vstages\tfade\ftimeout\3Ë\a\nsetup\vnotify\frequire\0" },
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-transparent"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/nvim-transparent",
    url = "https://github.com/xiyaowong/nvim-transparent"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rest.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14rest-nvim\frequire\0" },
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/rest.nvim",
    url = "https://github.com/rest-nvim/rest.nvim"
  },
  sonokai = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  ["ssr.nvim"] = {
    config = { "\27LJ\2\nÙ\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\fkeymaps\1\0\5\15prev_match\6N\nclose\6q\16replace_all\17<leader><cr>\15next_match\6n\20replace_confirm\t<cr>\1\0\a\vborder\frounded\14min_width\0032\fkeymaps\0\18adjust_window\2\15max_height\3\25\14max_width\3x\15min_height\3\5\nsetup\bssr\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/opt/ssr.nvim",
    url = "https://github.com/cshuaimin/ssr.nvim"
  },
  ["startup.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fstartup\frequire\0" },
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/startup.nvim",
    url = "https://github.com/startup-nvim/startup.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n´\1\0\0\6\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\23:TodoTelescope<CR>\15<leader>ft\6n\20nvim_set_keymap\bapi\bvim\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["typescript.nvim"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/typescript.nvim",
    url = "https://github.com/jose-elias-alvarez/typescript.nvim"
  },
  ["vim-ReplaceWithRegister"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/vim-ReplaceWithRegister",
    url = "https://github.com/inkarkat/vim-ReplaceWithRegister"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/vim-dadbod",
    url = "https://github.com/tpope/vim-dadbod"
  },
  ["vim-dadbod-completion"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/vim-dadbod-completion",
    url = "https://github.com/kristijanhusak/vim-dadbod-completion"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui",
    url = "https://github.com/kristijanhusak/vim-dadbod-ui"
  },
  ["vim-floaterm"] = {
    config = { "\27LJ\2\n≥\4\0\0\6\0\16\2\0296\0\0\0009\0\1\0*\1\0\0=\1\2\0006\0\0\0009\0\1\0*\1\1\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\b\0'\2\t\0B\0\2\0016\0\0\0009\0\n\0009\0\v\0'\2\f\0'\3\r\0'\4\14\0005\5\15\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24:FloatermToggle<CR>\14<leader>t\6n\20nvim_set_keymap\bapiâ\2      augroup FloatermBackground\n        autocmd!\n        autocmd FileType floaterm hi Floaterm guibg=NONE ctermbg=NONE   \" Fully transparent background\n        autocmd FileType floaterm setlocal winblend=20  -- Subtle transparency level\n      augroup END\n    \bcmd\ttmux\19floaterm_shell\vcenter\22floaterm_position\20floaterm_height\19floaterm_width\6g\bvimµÊÃô\19ô≥¶ˇ\3ÁÃô≥\6≥Êåˇ\3\0" },
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/vim-maximizer",
    url = "https://github.com/szw/vim-maximizer"
  },
  ["vim-nightfly-guicolors"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/vim-nightfly-guicolors",
    url = "https://github.com/bluz71/vim-nightfly-guicolors"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/Users/adamsteinberg/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^ssr"] = "ssr.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\n™\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\2\27automatic_installation\2\21ensure_installed\0\1\4\0\0\fpyright\rtsserver\18rust_analyzer\nsetup\20mason-lspconfig\frequire\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\nj\0\0\4\0\5\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0006\1\0\0'\3\1\0B\1\2\2=\1\1\0K\0\1\0\bvim\1\0\2\vstages\tfade\ftimeout\3Ë\a\nsetup\vnotify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: codeium.nvim
time([[Config for codeium.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fcodeium\frequire\0", "config", "codeium.nvim")
time([[Config for codeium.nvim]], false)
-- Config for: rest.nvim
time([[Config for rest.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14rest-nvim\frequire\0", "config", "rest.nvim")
time([[Config for rest.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n´\1\0\0\6\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\23:TodoTelescope<CR>\15<leader>ft\6n\20nvim_set_keymap\bapi\bvim\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n~\0\0\4\0\6\0\0166\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\3\0\0B\1\2\0019\1\4\0009\1\3\0014\3\0\0B\1\2\0019\1\5\0009\1\3\0014\3\0\0B\1\2\1K\0\1\0\18rust_analyzer\rtsserver\nsetup\fpyright\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n»\2\0\0\5\0\15\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0)\2\0\0'\3\v\0005\4\f\0B\0\4\0016\0\b\0009\0\t\0009\0\n\0)\2\0\0'\3\r\0005\4\14\0B\0\4\1K\0\1\0\1\0\2\abg\tNONE\afg\f#cdd6f4\16MasonBorder\1\0\2\abg\tNONE\afg\f#cdd6f4\16MasonNormal\16nvim_set_hl\bapi\bvim\aui\1\0\1\aui\0\nicons\1\0\3\24package_uninstalled\b‚úò\22package_installed\v‚úîÔ∏è\20package_pending\b‚ûú\1\0\2\vborder\frounded\nicons\0\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: startup.nvim
time([[Config for startup.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fstartup\frequire\0", "config", "startup.nvim")
time([[Config for startup.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: lazygit.nvim
time([[Config for lazygit.nvim]], true)
try_loadstring("\27LJ\2\nË\2\0\0\6\0\r\1!6\0\0\0009\0\1\0009\0\2\0'\2\3\0+\3\2\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\4\0)\3\n\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0'\3\6\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0*\3\0\0B\0\3\0016\0\0\0009\0\1\0009\0\b\0'\2\t\0'\3\n\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\17:LazyGit<CR>\15<leader>gg\6n\20nvim_set_keymap$lazygit_floating_window_scaling\frounded#lazygit_floating_window_border%lazygit_floating_window_winblend\28lazygit_floating_window\17nvim_set_var\bapi\bvimõ≥ÊÃ\25Ãô≥ˇ\3\0", "config", "lazygit.nvim")
time([[Config for lazygit.nvim]], false)
-- Config for: noice.nvim
time([[Config for noice.nvim]], true)
try_loadstring("\27LJ\2\nπ\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\rmessages\1\0\1\fenabled\2\14popupmenu\1\0\1\fenabled\2\fcmdline\1\0\3\fcmdline\0\14popupmenu\0\rmessages\0\1\0\1\tview\18cmdline_popup\nsetup\nnoice\frequire\0", "config", "noice.nvim")
time([[Config for noice.nvim]], false)
-- Config for: vim-floaterm
time([[Config for vim-floaterm]], true)
try_loadstring("\27LJ\2\n≥\4\0\0\6\0\16\2\0296\0\0\0009\0\1\0*\1\0\0=\1\2\0006\0\0\0009\0\1\0*\1\1\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\b\0'\2\t\0B\0\2\0016\0\0\0009\0\n\0009\0\v\0'\2\f\0'\3\r\0'\4\14\0005\5\15\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24:FloatermToggle<CR>\14<leader>t\6n\20nvim_set_keymap\bapiâ\2      augroup FloatermBackground\n        autocmd!\n        autocmd FileType floaterm hi Floaterm guibg=NONE ctermbg=NONE   \" Fully transparent background\n        autocmd FileType floaterm setlocal winblend=20  -- Subtle transparency level\n      augroup END\n    \bcmd\ttmux\19floaterm_shell\vcenter\22floaterm_position\20floaterm_height\19floaterm_width\6g\bvimµÊÃô\19ô≥¶ˇ\3ÁÃô≥\6≥Êåˇ\3\0", "config", "vim-floaterm")
time([[Config for vim-floaterm]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter ]]
vim.cmd [[ packadd nvim-ts-autotag ]]
time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
