return {
    -- "nvim-treesitter/nvim-treesitter",
    -- enable = true,
    -- build = ":TSUpdate",
    -- config = function ()
    --     local configs = require("nvim-treesitter.configs")
    --     configs.setup({
    --         ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "vhdl", "verilog", "bash", "python", "html", "toml" },
    --         sync_install = false,
    --         highlight = { enable = true },
    --         indent = { enable = true },
    --     })
    -- end

    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').install({ "c", "lua", "vim", "vimdoc", "query", "vhdl", "verilog", "bash", "python", "html", "toml" })
    end,
}
