return {
	{
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup({
		ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "python", "bash", "verilog",},
		auto_install = false,
		highlight = { enable = true, },
		indent = true,
		})
		end
	},
}
