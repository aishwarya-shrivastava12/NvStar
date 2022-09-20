local impatient_ok, impatient = pcall(require, "impatient")
if impatient_ok then
	impatient.enable_profile()
end

for _, source in ipairs({
	-- CORE
	"core.plugins",
	"core.option",
	"core.keymap",
	"core.user",

	-- PLUGS
	"plug.autocomplete",
	"plug.bufferline",
	"plug.colorizer",
	"plug.dashboard",
	"plug.filetype",
	"plug.focus",
	"plug.notify",
	"plug.nvim-tree",
	"plug.staline",
	"plug.telescope",
	"plug.terminal",
	"plug.treesitter",
	"plug.trouble",
	"plug.whichkey",
}) do
	local status_ok, fault = pcall(require, source)
	if not status_ok then
		vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault)
	end
end
