return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
	  "lua_ls",
	  "clangd"
	},
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")

      -- Configure error/warnings interface
      vim.diagnostic.config({
	  virtual_text = true,
	  severity_sort = true,
	  float = {
	      style = 'minimal',
	      border = 'rounded',
	      header = '',
	      prefix = '',
	  },
	  signs = {
	      text = {
		  [vim.diagnostic.severity.ERROR] = '🗙',
		  [vim.diagnostic.severity.WARN] = '▲',
		  [vim.diagnostic.severity.HINT] = '⚑',
		  [vim.diagnostic.severity.INFO] = '»',
	      },
	  },
      })

      lspconfig.lua_ls.setup({
	capabilities = capabilities
      })

      lspconfig.clangd.setup({
	capabilities = capabilities
      })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', {})
      vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', {})
      vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', {})
      vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', {})
    end
  }
}
