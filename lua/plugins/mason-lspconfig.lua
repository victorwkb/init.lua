local opts = {
	ensure_installed = {
		"efm",
		"pyright",
		"lua_ls",
		"ts_ls",
		"html",
		"cssls",
		"jsonls",
		"emmet_ls",
		"tailwindcss",
    "terraformls",
	},
	automatic_installation = true,
}

return {
	"williamboman/mason-lspconfig.nvim",
	opts = opts,
	event = "BufReadPre",
	dependencies = "williamboman/mason.nvim",
}
