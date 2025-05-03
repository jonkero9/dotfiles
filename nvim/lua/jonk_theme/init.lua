require("jonk_theme.lua_Line_theme")

local cap_colors_p = {
    black = "#45475A",
    blue = "#89B4FA",
    cyan = "#94E2D5",
    green = "#A6E3A1",
    magenta = "#F5C2E7",
    red = "#F38BA8",
    white = "#CDD6F4",
    yellow = "#F9E2AF",
    bg = '#1E1E2E'
}

local cap_theme = {
    primary = cap_colors_p.white,
    secondary = cap_colors_p.green,
    err = cap_colors_p.red,
    bg = cap_colors_p.bg,
    menu_bg = cap_colors_p.black,
    menu_fg = cap_colors_p.magenta,
}

function ApplyTheme(cols)
    vim.cmd.colorscheme('murphy')
    vim.api.nvim_set_hl(0, "Normal", {
        fg = cols.primary,
        bg = cols.bg
    })
    vim.api.nvim_set_hl(0, "EndOfBuffer", {
        bg = cols.bg
    })
    vim.api.nvim_set_hl(0, "LineNr", {
        fg = cols.primary
    })
    vim.api.nvim_set_hl(0, "WinSeparator", {
        fg = cols.secondary
    })
    vim.api.nvim_set_hl(0, "CursorLineNr", {
        fg = cols.err
    })
    vim.api.nvim_set_hl(0, "DiagnosticError", {
        fg = cols.err
    })
end

function ApplyMenuCols(cols)
    vim.api.nvim_set_hl(0, "Pmenu", {
        fg = cols.menu_fg,
        bg = cols.menu_bg,
    })
    vim.api.nvim_set_hl(0, "CmpItemKindDefault", {
        fg = cols.menu_fg,
    })
end

vim.api.nvim_create_user_command(
    'JonkThemeElectricBlue',
    function()
        ApplyTheme(cap_theme)
        ApplyMenuCols(cap_theme)
    end,
    {})

require("jonk_theme.syntax_hl")
