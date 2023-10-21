local config = function()
	local theme = require("lualine.themes.dracula")

	require("lualine").setup({
		options = {
            icons_enabled = true,
			theme = theme,
			globalstatus = true,
		},
		tabline = {
            lualine_a = { "mode" },
			lualine_b = { "buffers" },
            lualine_c = { "filename" },
            lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
        },
		sections = {
        },
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}
