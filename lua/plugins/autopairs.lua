return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
    config = function()
      local npairs = require("nvim-autopairs")
      npairs.setup()
      
      -- Integrate with nvim-cmp (only if cmp is available)
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      local cmp = require("cmp")
      if cmp and cmp.event then
        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
      end
    end,
}
