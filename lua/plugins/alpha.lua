return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }

    -- Set menu
    dashboard.section.buttons.val = {
	dashboard.button("f", " " .. " Find file", 	  "<cmd>cd $HOME/Documents | Telescope find_files<CR>"),
	dashboard.button("s", " " .. " Open Config" , 	  "<cmd>e $MYVIMRC | cd %:p:h | wincmd k | pwd<CR>"),
	dashboard.button("r", " " .. " Restore Session", "<cmd>lua require('persistence').load({ last = true })<cr>"),
	dashboard.button("l", "󰒲 " .. " Open Lazy",       "<cmd>Lazy<cr>"),
	dashboard.button("q", " " .. " Quit",            "<cmd>qa<cr>"),
    }

    alpha.setup(dashboard.opts)


    dashboard.section.footer.val = {
      [[                ]],
      [[                ]],
      [[                ]],
      [[                ]],
      [[ - By ElijahI - ]]
    }

    -- Disable folding on alpha buffer
    vim.cmd([[
	autocmd FileType alpha setlocal nofoldenable
    ]])
  end
}
