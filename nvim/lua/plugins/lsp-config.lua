return {
	"neovim/nvim-lspconfig",
	config = function()
		local my_lspconfig = require("lspconfig")
		my_lspconfig.vhdl_ls.setup({}) -- the documentation says use 'rust_hdl' but lspconfig did not like this... 'vhdl_ls' seems to work
		my_lspconfig.clangd.setup({})
	end,
}
