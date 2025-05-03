-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
	-- Enable or disable logging
	logging = true,
	-- Set the log level
	log_level = vim.log.levels.WARN,
	-- All formatter configurations are opt-in
	filetype = {
		-- Formatter configurations for filetype "lua" go here
		-- and will be executed in order
		html = {
			require("jonk_vim.prettier_formater")
		},
		json = {
			require("jonk_vim.prettier_formater")
		},
		jsonc = {
			require("jonk_vim.prettier_formater")
		},
		css = {
			require("jonk_vim.prettier_formater")
		},
		javascript = {
			require("jonk_vim.prettier_formater")
		},
		typescript = {
			require("jonk_vim.prettier_formater")
		},
		cs = {
			require("formatter.filetypes.cs").clangformat
		}
	}
}
