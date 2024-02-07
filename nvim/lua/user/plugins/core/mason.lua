return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
    "mfussenegger/nvim-dap",
    "jay-babu/mason-nvim-dap.nvim",
	},
	config = function()
		require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"clangd",
			},
      automatic_installation = true,
		})

		require("mason-nvim-dap").setup({
			ensure_installed = {
        "codelldb",
			},
      handlers = {},
      automatic_installation = true,
		})
	end,
}
