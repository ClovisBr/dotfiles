return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({ skip_confirm_for_simple_edits = true })
    vim.keymap.set("n", "<leader>e", "<cmd>Oil<cr>", { desc = "Start Oil" })
  end,
}
