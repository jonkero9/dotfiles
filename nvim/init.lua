require("jonk_vim")

vim.cmd("colorscheme rose-pine")

require("lualine").setup({
    options = {
        icons_enabled = true,
        theme = "rose-pine",
    }
})
