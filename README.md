# Personal Neovim Configuration
Basic Neovim configuration with LSP support, auto-formatting, and linter support for C and C++. Project and file navigation improved using plugins.

![](https://github.com/ElijahInamarga/nvim-config/blob/main/images/splashscreen_11-18-25.png)
![](https://github.com/ElijahInamarga/nvim-config/blob/main/images/nvim_showcase_2.png)

# Plugins

- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [none-ls](https://github.com/nvimtools/none-ls.nvim)
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Mason](https://github.com/mason-org/mason.nvim)
- [Mason-lspconfig](https://github.com/mason-org/mason-lspconfig.nvim)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [Harpoon](https://github.com/ThePrimeagen/harpoon)
- [Alpha-nvim](https://github.com/goolord/alpha-nvim)
- [Persistence](https://github.com/folke/persistence.nvim)
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [LazyGit](https://github.com/kdheepak/lazygit.nvim)
- [comment](https://github.com/numToStr/Comment.nvim)
- [UndoTree](https://github.com/mbbill/undotree)
- [transparent](https://github.com/xiyaowong/transparent.nvim)
- [flash](https://github.com/folke/flash.nvim)

# Favorite Motions

## Flash
```
<zk>                            -- Navigate code through search labels
```

## UndoTree
```
<leader>u                       -- Toggle undo worktree
```

## Comment
```
gcc                             -- Toggle linewise comment for current line
gc                              -- Toggle linewise comment for multiple lines inside visual mode region
gb                              -- Toggle blockwise comment for visual mode region
```

## LazyGit
```
<leader>gg                      -- Open LazyGit menu
```

## Harpoon
```
<leader>a                       -- Add file to Harpoon menu buffer
<C-e>                           -- Toggles Harpoon menu buffer
<leader>fl                      -- Toggles Harpoon menu buffer with Telescope
<C-[>                           -- Open previous file in Harpoon menu buffer
<C-]>                           -- Open next file in Harpoon menu buffer
```

## Telescope
```
<leader>ff                      -- Open finder
<leader>fg                      -- Open finder with live grep
```

## Neo-tree
```
<C-n>                           -- Toggle Neotree window
<C-w>h,i,j, or k                -- Move buffers
```

## None-ls
```
<leader>fn                      -- Format file
```

## Nvim-lspconfig
```
K                               -- Show info
gd                              -- Go to definition
gD                              -- Go to declaration
gi                              -- Go to implementation
<leader>ca                      -- Access code actions
```
