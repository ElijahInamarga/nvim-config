# Personal Neovim Configuration
Basic Neovim configuration with LSP support, auto-formatting, and linter support for C and C++. Version control and file management supercharged with `LazyGit` and `Yazi`.
Add personal plugins in `lua/plugins/`.
```
nvim/  
├── lua/
    ├── options.lua
    ├── plugins/
├── init.lua
├── README.md
├── images/
```
# Plugins and Favorite Motions

This comprehensive table provides an overview of each major plugin, its function, and all associated keybindings (`<leader>` is `Space`).

| Plugin Name | Purpose / Function | Keybinding(s) | 
 | ----- | ----- | ----- | 
| [**LSP (via nvim-lspconfig)**](https://github.com/neovim/nvim-lspconfig) | Core Language Server features (definition, hover docs, code actions) | `K`, `gd`, `gD`, `gi`, `<leader>ca` | 
| [**Telescope**](https://github.com/nvim-telescope/telescope.nvim) | High-speed Fuzzy Finder for files (`<leader>ff`), buffers, and content (`Live Grep: <leader>fg`) | `<leader>ff`, `<leader>fg` | 
| [**Harpoon**](https://github.com/ThePrimeagen/harpoon) | Quick-jump utility for marking and cycling between frequently used files | `<leader>a`, `<C-e>`, `<C-[>`, `<C-]>` | 
| [**Yazi**](https://github.com/mikavilpas/yazi.nvim) | Terminal-integrated File Explorer | `<C-n>` | 
| [**none-ls**](https://github.com/nvimtools/none-ls.nvim) | Integrates external formatters and linters (e.g., clang-format) | `<leader>fn` | 
| [**LazyGit**](https://github.com/kdheepak/lazygit.nvim) | Opens the fully-featured, integrated Git Terminal UI | `<leader>gg` | 
| [**vim-fugitive**](https://github.com/tpope/vim-fugitive) | Integrated Git with Neovim | `:Git` |
| [**UndoTree**](https://github.com/mbbill/undotree) | Visual graph interface for inspecting and reverting undo history | `<leader>u` | 
| [**flash**](https://github.com/folke/flash.nvim) | Enhanced search and motion using jump labels | `<zk>` | 
| [**comment**](https://github.com/numToStr/Comment.nvim) | Simple, efficient toggle for code comments (linewise/blockwise) | `gcc`, `gc`, `gb` | 
| [**Treesitter**](https://github.com/nvim-treesitter/nvim-treesitter) | Superior syntax parsing and highlighting | *N/A (Passive)* | 
| [**nvim-cmp**](https://github.com/hrsh7th/nvim-cmp) | Autocompletion | *N/A (Automatic)* | 
| [**LuaSnip**](https://github.com/L3MON4D3/LuaSnip) | Snippet Engine | *N/A (Automatic)* | 
| [**Alpha-nvim**](https://github.com/goolord/alpha-nvim) | Custom start screen aesthetics | *N/A (Visual)* | 
| [**mini.statusline**](https://github.com/nvim-mini/mini.statusline) | Status line aesthetics | *N/A (Visual)* | 
| [**Persistence**](https://github.com/folke/persistence.nvim) | Automatically saves and restores sessions/layouts | *N/A (Automatic)* | 
| [**nvim-autopairs**](https://github.com/windwp/nvim-autopairs) | Automatic pairing of quotes and brackets | *N/A (Automatic)* |
| [**transparent.nvim**](https://github.com/xiyaowong/transparent.nvim) | Make neovim transparent | *N/A (Visual)* |
