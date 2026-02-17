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
        require('nvim-treesitter').install({ "c", "cpp", "lua", "vim", "vimdoc", "query", "vhdl", "verilog", "bash", "python", "html", "toml", "make" })

        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'c', 'cpp', 'lua', 'vim', 'vimdoc', 'query', 'vhdl', 'systemverilog', 'verilog', 'bash', 'python', 'python', 'html', 'toml', 'make' },
            callback = function() 
            vim.treesitter.start()
            vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end,

    -- vim.api.nvim_create_autocmd('FileType', {
    --     pattern = { 'v' },
    --     callback = function() vim.treesitter.start() end,
    -- }),
}
