return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

       -- Ruby LSP: default for all Ruby projects 
      vim.lsp.config.ruby_lsp = {
        cmd = { 'ruby-lsp' },
        filetypes = { 'ruby' },
        root_markers = { 'Gemfile', '.git' },
        capabilities = capabilities,
      }


      -- Configure Sorbet to only start if sorbet/config exists
      vim.lsp.config.sorbet = {
        cmd = { 'sorbet', 'lsp' },
        filetypes = { 'ruby' },
        root_markers = { 'sorbet/config' },  -- Only start if this file exists
        capabilities = capabilities,
      }

      -- Configure yamlls using the new vim.lsp.config API
      vim.lsp.config.yamlls = {
        cmd = { 'yaml-language-server', '--stdio' },
        filetypes = { 'yaml', 'yaml.docker-compose' },
        root_markers = { '.git' },
        capabilities = capabilities,
        settings = {
          yaml = {
            schemas = {
              ["https://www.rubyschema.org/i18n-tasks.json"] = "i18n-tasks.yml",
              ["https://www.rubyschema.org/lefthook.json"] = "lefthook.yml",
              ["https://www.rubyschema.org/rubocop.json"] = ".rubocop.yml",
              ["https://www.rubyschema.org/i18n/locale.json"] = "locale/*.yml",
              ["https://www.rubyschema.org/kamal/deploy.json"] = "deploy.yml",
              ["https://www.rubyschema.org/packwerk/package.json"] = "package.yml",
              ["https://www.rubyschema.org/rails/cache.json"] = "cache.yml",
              ["https://www.rubyschema.org/rails/database.json"] = "database.yml",
              ["https://www.rubyschema.org/rails/queue.json"] = "queue.yml",
              ["https://www.rubyschema.org/rails/recurring.json"] = "recurring.yml",
              ["https://www.rubyschema.org/rails/storage.json"] = "storage.yml",
            },
          },
        },
      }

      -- Enable the LSP servers
      vim.lsp.enable('ruby_lsp')
      vim.lsp.enable('yamlls')

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    end,
  },
}
