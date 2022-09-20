local impatient_ok, impatient = pcall(require, "impatient")
if impatient_ok then
	impatient.enable_profile()
end

for _, source in ipairs({
	-- CORE
	"core.plugins",
	"core.option",
	"core.colorscheme",
	"core.keymap",
	"core.cmds",
	"core.files",
	"core.abbreviations",

	-- PLUGS
	"plug.alpha",
	"plug.toggler",
	"plug.todo",
	"plug.cmp",
	"plug.telescope",
	"plug.treesitter",
	"plug.nvim-tree",
	"plug.null-ls",
	"plug.gitsigns",
	"plug.toggleterm",
	"plug.lspInstaller",
	"plug.lsp",
	"plug.lsp-saga",
	"plug.lua-snip",
}) do
	local status_ok, fault = pcall(require, source)
	if not status_ok then
		vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault)
	end
end
