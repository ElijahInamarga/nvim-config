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
      [[ ┌─────────────────────────────────────────────────────────────────┐ ]],
      [[ │                     ,                                           │ ]],
      [[ │                     \`-._           __                          │ ]],
      [[ │                      \\  \-..____,.'  `.                        │ ]],
      [[ │                       :  )       :      :\                      │ ]],
      [[ │                        ;'        '   ;  | :                     │ ]],
      [[ │                        )..      .. .:.`.; :                     │ ]],
      [[ │                       /::...  .:::...   ` ;                     │ ]],
      [[ │                       `:o>   /\o_>        : `.                  │ ]],
      [[ │                      `-`.__ ;   __..--- /:.   \                 │ ]],
      [[ │                     ==== \_/   ;=====_.':.     ;                │ ]],
      [[ │                       ,/'`--'...`--....        ;                │ ]],
      [[ │                            ;                    ;               │ ]],
      [[ │                        . '                       ;              │ ]],
      [[ │                      .'     ..     ,      .       ;             │ ]],
      [[ │                     :       ::..  /      ;::.     |             │ ]],
      [[ │                    /      `.;::.  |       ;:..    ;             │ ]],
      [[ │                   :         |:.   :       ;:.    ;              │ ]],
      [[ │                   :         ::     ;:..   |.    ;               │ ]],
      [[ │                    :       :;      :::....|     |               │ ]],
      [[ │                    /\     ,/ \      ;:::::;     ;               │ ]],
      [[ │                  .:. \:..|    :     ; '.--|     ;               │ ]],
      [[ │                 ::.  :''  `-.,,;     ;'   ;     ;               │ ]],
      [[ │              .-'. _.'\      / `;      \,__:      \              │ ]],
      [[ │              `---'    `----'   ;      /    \,.,,,/              │ ]],
      [[ │                                 `----`                          │ ]],
      [[ └─────────────────────────────────────────────────────────────────┘ ]],
      [[                              Neovim                                 ]],
    }

    -- Set menu
    dashboard.section.buttons.val = {
	dashboard.button("f", " " .. " Find file", 	  ":cd $HOME/Documents | Telescope find_files<CR>"),
	dashboard.button("s", " " .. " Config" , 	  ":e $MYVIMRC | :cd %:p:h | wincmd k | pwd<CR>"),
	dashboard.button("r", " " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
	dashboard.button("l", "󰒲 " .. " Lazy",            "<cmd> Lazy <cr>"),
	dashboard.button("q", " " .. " Quit",            "<cmd> qa <cr>"),
    }

    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[
	autocmd FileType alpha setlocal nofoldenable
    ]])
  end
}
