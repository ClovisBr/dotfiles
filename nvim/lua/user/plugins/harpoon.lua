return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = true,
	keys = {
		{
			"<leader>m",
			"<cmd>lua require('harpoon.mark').add_file() print('Marked File')<cr>",
			desc = "Mark file with harpoon",
		},
		{ "<leader>s", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Show harpoon marks" },
		{ "<C-n>", "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = "Go to next harpoon mark" },
		{ "<C-t>", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = "Go to previous harpoon mark" },
		{ "<C-0>", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "Go to harpoon mark 1" },
		{ "<C-1>", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "Go to harpoon mark 2" },
		{ "<C-2>", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "Go to harpoon mark 3" },
		{ "<C-3>", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "Go to harpoon mark 4" },
		{ "<C-4>", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", desc = "Go to harpoon mark 5" },
		{ "<C-5>", "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", desc = "Go to harpoon mark 6" },
		{ "<C-6>", "<cmd>lua require('harpoon.ui').nav_file(7)<cr>", desc = "Go to harpoon mark 7" },
		{ "<C-7>", "<cmd>lua require('harpoon.ui').nav_file(8)<cr>", desc = "Go to harpoon mark 8" },
	},
}
