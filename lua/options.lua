vim.opt.relativenumber = true
vim.opt.shiftwidth = 8
vim.g.mapleader = " "
vim.opt.termguicolors = true
vim.opt.cursorline = true

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "h" },
  callback = function()
    vim.opt_local.tabstop = 8      -- Render \t as 8 spaces
    vim.opt_local.shiftwidth = 8   -- Size of an indent
    vim.opt_local.expandtab = true -- Convert tabs to spaces
  end,
})
