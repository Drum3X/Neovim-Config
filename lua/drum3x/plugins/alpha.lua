return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "                                                             ",
      " ██████╗ ██████╗ ██╗   ██╗███╗   ███╗██╗   ██╗██╗███╗   ███╗ ",
      " ██╔══██╗██╔══██╗██║   ██║████╗ ████║██║   ██║██║████╗ ████║ ",
      " ██║  ██║██████╔╝██║   ██║██╔████╔██║██║   ██║██║██╔████╔██║ ",
      " ██║  ██║██╔══██╗██║   ██║██║╚██╔╝██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      " ██████╔╝██║  ██║╚██████╔╝██║ ╚═╝ ██║ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      " ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                                             ",   
    }

    dashboard.section.buttons.val = {
      dashboard.button("n", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("e", "  > File explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("f", "󰱼  > Find file", "<cmd>Telescope find_files<CR>"),
      dashboard.button("w", "  > Find word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("r", "󰁯  > Restore session", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", "  > Quit DrumVim", "<cmd>qa<CR>"),
    }

    alpha.setup(dashboard.opts)

    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
