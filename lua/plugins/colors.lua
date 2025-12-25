return {
  {
    "metalelf0/black-metal-theme-neovim",
    lazy = false,
    priority = 1000,
    config = function()
      -- This setup function selects and loads the theme called 'gorgoroth'
      require("black-metal").setup({
        theme = "gorgoroth",
      })
      require("black-metal").load() -- Apply the theme

      -- Custom cursor line and status line 
      vim.api.nvim_set_hl(0, "CursorLine", { bg = "#222222", underline = false })
      vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#e15d44", bold = true })

      vim.api.nvim_set_hl(0, "StatusLine", { bg = "#1a1a1a", fg = "#bcbcbc"})
      vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#121212", fg = "#585858" })
    end,
  },
}
