return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require('nvim-treesitter.configs').setup {
			ensure_installed = { "vimdoc", "c", "cpp", "python", "rust", "lua", "vim", },
			sync_install = false,
			auto_install = true,
			indent = {
				enable = true
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = { "markdown" },
			},
		}
end
}
