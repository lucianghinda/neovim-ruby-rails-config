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

-- Mapping ESC to clear search highlighting
vim.keymap.set('n', 'ESC', ':nohlsearch<CR>', { noremap = true, silent = true })

vim.wo.number = true

-- Setting up keys for tabs

vim.keymap.set('n', 'tn', ':tabnew<CR>')
vim.keymap.set('n', 'td', ':tabclose<CR>')
vim.keymap.set('n', 'th', ':tabnext -1<CR>')
vim.keymap.set('n', 'tl', ':tabnext +1<CR>')

-- Custom things
--
function copyRelativePathAndLineNumber()
    local path = vim.fn.expand("%")
    local line_number = vim.fn.line(".")
  local info = path .. ":" .. line_number
  vim.fn.system("echo " .. vim.fn.shellescape(info) .. " | pbcopy")
  print("Copied: " .. info)
end

vim.api.nvim_set_keymap('n', '<leader>kc', '<cmd>lua copyRelativePathAndLineNumber()<CR>', { noremap = true, silent = true })

-- Set Leader+y to copy to system clipboard
--
vim.keymap.set('v', '<leader>y', '"+y')


-- Enable wrapping and break at word boundaries
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.showbreak = "↪ "  -- optional: show a symbol at wrapped lines

-- Remap normal mode `j` to move down by *visual* lines (gj), not file lines
vim.keymap.set("n", "j", "gj", { noremap = true, silent = true })

-- Remap normal mode `k` to move up by *visual* lines (gk), not file lines
vim.keymap.set("n", "k", "gk", { noremap = true, silent = true })

-- Remap normal mode `0` to move to the beginning of the *visual* line (g0)
vim.keymap.set("n", "0", "g0", { noremap = true, silent = true })

-- Remap normal mode `$` to move to the end of the *visual* line (g$)
vim.keymap.set("n", "$", "g$", { noremap = true, silent = true })
