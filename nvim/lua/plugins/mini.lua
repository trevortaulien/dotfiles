return {
    "echasnovski/mini.nvim",
    enabled = true,
    version = "*",
    config = function()
        ------ mini.files stuff ------
        require('mini.files').setup({
            windows = {
                preview = true,
                preview_width = 5000,
            },
        })

        local minifiles_toggle = function()
            if not MiniFiles.close() then MiniFiles.open() end
        end

        vim.keymap.set('n', '<leader>e', minifiles_toggle)

        -- Auto command yoinked from:
        -- https://github.com/echasnovski/mini.nvim/issues/747
        vim.api.nvim_create_autocmd('User', {
            pattern = 'MiniFilesWindowUpdate',
            callback = function(args) vim.wo[args.data.win_id].relativenumber = true end,
        })
        --------------------------------

        ----- mini.comment stuff -----
        require('mini.comment').setup({
            options = {
                custom_commentstring =
                    function()
                        if(vim.bo.filetype == 'systemverilog' or vim.bo.filetype == 'verilog' ) then
                            return '// %s'
                        else
                            return nil
                        end
                    end
            },
        })
        --------------------------------

        ----- mini.icons stuff -----
        require('mini.icons').setup({
            style = 'ascii',
            file = { ascii = 'U' },
        })
        ----------------------------
    end
}
