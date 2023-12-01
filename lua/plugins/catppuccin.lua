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
				dashboard = true,
				cmp = true,
				gitsigns = true,
				lsp_trouble = true,
				lsp_saga = true,
				mason = true,
				notify = true,
				noice = true,
				nvimtree = true,
				telescope = true,
				treesitter = true,
				which_key = true,
        illuminate = {
          enabled = true,
        },
        indent_blankline = {
          enabled = true,
          scope_color = "frappe", -- catppuccin color (eg. `lavender`) Default: text
          colored_indent_levels = true,
        },
        mini = {
          enabled = true,
          indentscope_color = "frappe",
        },
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
			},
		})
		vim.cmd("colorscheme catppuccin")
	end,
}
