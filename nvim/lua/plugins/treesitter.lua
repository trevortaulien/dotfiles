return {
	{
	"nvim-treesitter/nvim-treesitter",
	config = function()
		-- VHDL is not apart of treesitter repo so this is necessary
		local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
		parser_config.vhdl = {
		  install_info = {
		    url = "https://github.com/JLeemaster/tree-sitter-vhdl", -- local path or git repo
		    files = {"src/parser.c"}, -- note that some parsers also require src/scanner.c or src/scanner.cc
		    -- optional entries:
		    branch = "main", -- default branch in case of git repo if different from master
		    generate_requires_npm = false, -- if stand-alone parser without npm dependencies
		    requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
		  },
		  filetype = "vhdl", -- if filetype does not match the parser name
		}
		--
		require("nvim-treesitter.configs").setup({
		ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "python", "bash", "verilog", "vhdl",},
		auto_install = false,
		highlight = { enable = true, },
		indent = true,
		})
		-- Treesitter Specific Maps
		vim.keymap.set('n', '<leader>it', ':InspectTree<CR>')
	end
	},
}

