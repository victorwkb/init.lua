return {
	"NeogitOrg/neogit",
  lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration

		-- Only one of these is needed, not both.
		"nvim-telescope/telescope.nvim", -- optional
	},
	config = function()
		local neogit = require("neogit")
		neogit.setup({
			integrations = {
				diffview = true,
				telescope = true,
			},
		})
		vim.keymap.set("n", "<leader>gs", ":Neogit<CR>", { silent = true, noremap = true })
		vim.keymap.set("n", "<leader>cc", ":Neogit commit", { silent = true, noremap = true })
		vim.keymap.set("n", "<leader>gp", ":Neogit pull<CR>", { silent = true, noremap = true })
		vim.keymap.set("n", "<leader>gP", ":Neogit push<CR>", { silent = true, noremap = true })
		vim.keymap.set("n", "<leader>gb", ":Neogit git_branches<CR>", { silent = true, noremap = true })
		vim.keymap.set("n", "<leader>gB", ":G blame<CR>", { silent = true, noremap = true })
	end,
}
