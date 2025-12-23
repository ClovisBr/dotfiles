return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
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
    require("mason-tool-installer").setup({
      ensure_installed = {
        "black",
        "flake8",
        "isort",
        "mypy",
        "pylint",
        "golangci-lint",
        "goimports",
      },
    })
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "clangd",
        "pyright",
        "html",
        "cssls",
        "dockerls",
        "gopls",
      },
      automatic_installation = true,
    })
    require("mason-nvim-dap").setup({
      ensure_installed = {
        "debugpy",
        "codelldb",
        "delve",
      },
      handlers = {},
      automatic_installation = true,
    })
  end,
}
