return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			header = {
				title = "VICTORWKB",
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
