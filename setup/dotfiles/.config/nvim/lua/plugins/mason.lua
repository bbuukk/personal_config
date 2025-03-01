-- ~/nvim/lua/slydragonn/plugins/mason.lua

return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			automatic_installation = true,
			ensure_installed = {
				"cssls",
				"eslint",
				"html",
				"jsonls",
				"pyright",
				"tailwindcss",
				"intelephense",
				"gopls",
				"sqlls",
				"ts_ls",
				"stylelint_lsp",
				"bashls",
				"dockerls",
			},
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				"prettier",
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"pylint",
				"eslint_d",
				"php-cs-fixer", -- PHP formatter
				"shfmt", -- bash, mksh, shell
			},
		})
	end,
}
