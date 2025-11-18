return {
  {
    "williamboman/mason.nvim",
    opts = {}
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
	  "lua_ls",
	  "clangd"
	},
    },
    dependencies = {
        { "williamboman/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    }
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      -- nvim-lspconfig is still needed to register server configs
      -- but we use vim.lsp.config() instead of require('lspconfig')
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

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

      -- Configure and enable lua_ls using vim.lsp.config() API
      vim.lsp.config('lua_ls', {
	capabilities = capabilities
      })
      vim.lsp.enable('lua_ls')

      -- Configure and enable clangd using vim.lsp.config() API
      vim.lsp.config('clangd', {
	capabilities = capabilities
      })
      vim.lsp.enable('clangd')

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', {})
      vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', {})
      vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', {})
      vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', {})
    end
  }
}
