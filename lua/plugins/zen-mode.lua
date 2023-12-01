return {
	"folke/zen-mode.nvim",
  cmd = "ZenMode",
	opts = {
		window = {
			backdrop = 0.95,
			width = 120,
			height = 1,
			options = {},
		},
		plugins = {
			gitsigns = true,
			tmux = true,
			alacritty = {
				enabled = true,
				font = "+2",
			},
		},
	},
  keys = {
    { "<leader>zz", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
  },
}
