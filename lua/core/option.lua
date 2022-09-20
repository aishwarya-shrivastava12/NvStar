vim.o.hidden = true
vim.o.fileencoding = "utf-8"
vim.o.splitbelow = true
vim.o.splitright = true
vim.opt.termguicolors = true
vim.o.conceallevel = 0
vim.o.showtabline = 2
vim.o.showmode = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300
vim.o.timeoutlen = 1000
vim.o.clipboard = "unnamedplus"
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.scrolloff = 0
vim.o.sidescrolloff = 5
vim.o.mouse = "a"
vim.wo.wrap = false
vim.wo.number = true
vim.o.cursorline = true
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 0
vim.bo.shiftwidth = 0
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.expandtab = true
vim.opt.fillchars:append("eob: ")
vim.bo.expandtab = true
vim.opt_local.bufhidden = "wipe"
vim.opt_local.buflisted = false
vim.opt.laststatus = 3
vim.diagnostic.config({ signs = false })
vim.cmd("set lazyredraw")
vim.cmd("filetype plugin indent on")
vim.cmd("colorscheme nvstar")

local default_plugins = {
	"2html_plugin",
	"getscript",
	"getscriptPlugin",
	"gzip",
	"logipat",
	"netrw",
	"netrwPlugin",
	"netrwSettings",
	"netrwFileHandlers",
	"matchit",
	"tar",
	"tarPlugin",
	"rrhelper",
	"spellfile_plugin",
	"vimball",
	"vimballPlugin",
	"zip",
	"zipPlugin",
	"tutor",
	"rplugin",
	"synmenu",
	"optwin",
	"compiler",
	"syntax",
	"bugreport",
	"ftplugin",
	"matchparen",
}
for _, plugin in pairs(default_plugins) do
	vim.g["loaded_" .. plugin] = 1
end

local default_providers = {
	"node",
	"perl",
	"python3",
	"ruby",
}

for _, provider in ipairs(default_providers) do
	vim.g["loaded_" .. provider .. "_provider"] = 0
end
