vim.g.mapleader = " "

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Split Maps
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

vim.keymap.set('n', '<C-Left>' , ':vertical resize -3<CR>', { silent = true,})
vim.keymap.set('n', '<C-Right>', ':vertical resize +3<CR>', { silent = true,})
vim.keymap.set('n', '<C-Up>'   , ':resize +3<CR>'         , { silent = true,})
vim.keymap.set('n', '<C-Down>' , ':resize -3<CR>'         , { silent = true,})

vim.keymap.set('n', '<leader>ch', ':checkhealth<CR>')
