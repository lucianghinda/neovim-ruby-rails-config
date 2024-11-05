vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

-- Setting up keys for tabs

vim.keymap.set('n', 'tn', ':tabnew<CR>')
vim.keymap.set('n', 'td', ':tabclose<CR>')
vim.keymap.set('n', 'th', ':tabnext -1<CR>')
vim.keymap.set('n', 'tl', ':tabnext +1<CR>')
