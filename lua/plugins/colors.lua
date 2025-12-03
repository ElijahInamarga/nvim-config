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
    end,
  },
}
