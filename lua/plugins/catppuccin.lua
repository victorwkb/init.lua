return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "frappe",
			transparent_background = true,
			integrations = {
				cmp = true,
				gitsigns = true,
				indent_blankline = {
					enabled = true,
					scope_color = "", -- catppuccin color (eg. `lavender`) Default: text
					colored_indent_levels = false,
				},
				lsp_trouble = true,
				mason = true,
				native_lsp = {
					enabled = true,
					virtual_text = {
						errors = { "italic" },

						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
					},
					underlines = {
						errors = { "underline" },
						hints = { "underline" },
						warnings = { "underline" },
						information = { "underline" },
					},
					inlay_hints = {
						background = true,
					},
				},
				notify = true,
				noice = true,
				nvimtree = true,
				telescope = {
					enabled = true,
				},
				treesitter = true,
				which_key = true,
			},
		})
		vim.cmd("colorscheme catppuccin")
	end,
}
