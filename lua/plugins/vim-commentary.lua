return {
  "tpope/vim-commentary",
  event = "VeryLazy",
  keys = {
    { "gc", mode = { "n", "v" } },
    { "gcc", mode = { "n" } },
  },
  config = function()
    vim.keymap.set("n", "<leader>/", ":Commentary<CR>", { noremap = true, silent = true })
    vim.keymap.set("v", "<leader>/", ":Commentary<CR>", { noremap = true, silent = true })
  end 
}
