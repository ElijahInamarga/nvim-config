# nvim-config
![nvim](https://github.com/ElijahInamarga/nvim-config/blob/main/images/new_splashscreen.png)
Basic Neovim configuration with LSP support, auto-formatting, and linter support for C/C++. File navigation handled with ```Harpoon```, ```Neo-tree```, ```Persistence```, and ```Telescope```.
Git version control improved with ```LazyGit``` and ```vim-fugitive```.

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
- [LazyGit.nvim](https://github.com/kdheepak/lazygit.nvim)
- [comment.nvim](https://github.com/numToStr/Comment.nvim)
- [smear-cursor](https://github.com/sphamba/smear-cursor.nvim)

# Favorite Keybinds

## Comment.nvim
```
gcc                             -- Toggle linewise comment for current line
gc                              -- Toggle linewise comment for multiple lines inside visual mode region
gb                              -- Toggle blockwise comment for visual mode region
```

## LazyGit.nvim
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
