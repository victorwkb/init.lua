local config = function()
	require("lualine").setup({
		options = {
			icons_enabled = true,
			theme = "catppuccin",
			globalstatus = true,
		},
		tabline = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "buffers", "diagnostics" },
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		sections = {},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}
