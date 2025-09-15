return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
  },
  keys = {
    { "<A-u>", "<cmd>TmuxNavigateLeft<cr>" },
    { "<A-e>", "<cmd>TmuxNavigateDown<cr>" },
    { "<A-i>", "<cmd>TmuxNavigateUp<cr>" },
    { "<A-a>", "<cmd>TmuxNavigateRight<cr>" },
  },
}
