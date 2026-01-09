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
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      vim.diagnostic.config({
	  virtual_text = true,
	  severity_sort = true,
	  float = {
	      style = 'minimal',
	      border = 'rounded',
	      header = '',
	      prefix = '',
	  },
      })
      local runtime_path = vim.split(package.path, ';')
      table.insert(runtime_path, 'lua/?.lua')
      table.insert(runtime_path, 'lua/?/init.lua')

      vim.lsp.config('lua_ls', {
	capabilities = capabilities,
	settings = {
	  Lua = {
	    runtime = {
	      version = 'LuaJIT',
	      path = runtime_path,
	    },
	    diagnostics = {
	      globals = { 'vim', 'use' },
	      disable = { 'missing-fields' },
	    },
	    workspace = {
	      library = {
		[vim.fn.expand('$VIMRUNTIME/lua')] = true,
		[vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
		[vim.fn.stdpath('config') .. '/lua'] = true,
		[vim.fn.stdpath('data') .. '/lazy'] = true,
	      },
	      checkThirdParty = false,
	    },
	    telemetry = {
	      enable = false,
	    },
	  },
	},
      })
      vim.lsp.enable('lua_ls')

      -- Configure and enable clangd using vim.lsp.config() API
      vim.lsp.config('clangd', {
	capabilities = capabilities,
	cmd = {
		"clangd",
		"--header-insertion=never",
	},
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
