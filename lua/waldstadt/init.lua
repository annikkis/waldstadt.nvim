local M = {
	config = {
		underline = true,
		strikethrough = true,
		bold = true,
		italic = {
			strings = true,
			comments = true,
			folds = true,
		},
		inversion = {
			cursor = true,
			visual = false,
			search = true,
			diagnostic = false,
			diff = false,
		},
		overrides = {
			colors = {},
			highlights = {},
		},
	},
}

M.setup = function(config)
	M.config = vim.tbl_deep_extend("force", M.config, config or {})
end

M.load = function()
	if vim.api.nvim_call_function("has", { "0.8.0" }) == 1 then
		vim.notify_once("waldstadt: you must use neovim 0.8.0 or higher")
		return
	end

	if vim.g.colors_name then
		vim.cmd.highlight("clear")
		vim.cmd.syntax("reset")
	end

	vim.g.colors_name = "waldstadt"
	vim.o.termguicolors = true

	local highlights = require("waldstadt.highlights").setup()
	for key, value in pairs(highlights) do
		vim.api.nvim_set_hl(0, key, value)
	end
end

return M
