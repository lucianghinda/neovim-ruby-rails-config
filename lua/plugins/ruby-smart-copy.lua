return {
  "lucianghinda/ruby-smart-copy.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("ruby-smart-copy").setup({
      keymap = "<leader>rc", -- Optional: customize keymap (default: <leader>rc)
      desc = "Smart copy Ruby method", -- Optional: customize description
    })
  end,
}
