return {
	"christoomey/vim-tmux-navigator",
	cmd = {
		"TmuxNavigateLeft",
		"TmuxNavigateDown",
		"TmuxNavigateUp",
		"TmuxNavigateRight",
	},
	keys = {
		{ "<A-,>", "<cmd>TmuxNavigateLeft<cr>" },
		{ "<A-u>", "<cmd>TmuxNavigateDown<cr>" },
		{ "<A-e>", "<cmd>TmuxNavigateUp<cr>" },
		{ "<A-i>", "<cmd>TmuxNavigateRight<cr>" },
	},
}
