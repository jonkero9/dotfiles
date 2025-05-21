require("jonk_vim")
local cat = "catppuccin-mocha";
vim.cmd("colorscheme catppuccin-mocha")

require("lualine").setup({
    options = {
        icons_enabled = true,
        theme = cat,
    }
})
