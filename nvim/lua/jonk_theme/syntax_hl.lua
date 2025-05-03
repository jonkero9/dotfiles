local colors_p_cappuc = {
    black = "#45475A",
    blue = "#89B4FA",
    cyan = "#94E2D5",
    green = "#A6E3A1",
    magenta = "#F5C2E7",
    red = "#F38BA8",
    white = "#CDD6F4",
    yellow = "#F9E2AF",
    purple = "#ae94e2",
    orange = "#facf89"
}

local cappu = {
    identifier = colors_p_cappuc.white,
    para = colors_p_cappuc.magenta,
    prop = colors_p_cappuc.white,
    var = colors_p_cappuc.purple,
    func = colors_p_cappuc.green,
    statement = colors_p_cappuc.blue,
    structure = colors_p_cappuc.blue,
    stringg = colors_p_cappuc.red,
    comment = colors_p_cappuc.red,
    type = colors_p_cappuc.orange,
    warning = colors_p_cappuc.yellow,
    err = colors_p_cappuc.red,
}

local cappu_2 = {
    identifier = colors_p_cappuc.white,
    para = colors_p_cappuc.red,
    prop = colors_p_cappuc.blue,
    var = colors_p_cappuc.white,
    func = colors_p_cappuc.purple,
    statement = colors_p_cappuc.green,
    structure = colors_p_cappuc.green,
    stringg = colors_p_cappuc.orange,
    comment = colors_p_cappuc.orange,
    type = colors_p_cappuc.orange,
    warning = colors_p_cappuc.yellow,
    err = colors_p_cappuc.red,
}

function SetSyntaxHl(cols)
    -- Comment
    vim.api.nvim_set_hl(0, "Comment", {
        fg = cols.comment
    })

    -- Diagno
    vim.api.nvim_set_hl(0, "DiagnosticWarn", {
        fg = cols.warning
    })

    -- Ident
    vim.api.nvim_set_hl(0, "Identifier", {
        fg = cols.identifier
    })

    -- Fucntion/Method
    vim.api.nvim_set_hl(0, "Function", {
        fg = cols.func
    })
    -- Structure
    vim.api.nvim_set_hl(0, "Structure", {
        fg = cols.structure
    })
    vim.api.nvim_set_hl(0, "Type", {
        fg = cols.structure
    })
    vim.api.nvim_set_hl(0, "Special", {
        fg = cols.structure
    })
    vim.api.nvim_set_hl(0, "Delimeter", {
        fg = cols.structure
    })
    vim.api.nvim_set_hl(0, "Delimiter", {
        fg = cols.structure
    })
    vim.api.nvim_set_hl(0, "Operator", {
        fg = cols.structure
    })

    -- Statement
    vim.api.nvim_set_hl(0, "Statement", {
        fg = cols.statement
    })
    vim.api.nvim_set_hl(0, "Macro", {
        fg = cols.statement
    })

    -- string/number
    vim.api.nvim_set_hl(0, "String", {
        fg = cols.stringg
    })
    vim.api.nvim_set_hl(0, "Boolean", {
        fg = cols.stringg
    })
    vim.api.nvim_set_hl(0, "Number", {
        fg = cols.stringg
    })
    vim.api.nvim_set_hl(0, "Character", {
        fg = cols.stringg
    })

    -- match paren
    vim.api.nvim_set_hl(0, "MatchParen", {
        bg = cols.identifier
    })
end

function SetRustHl(cols)
    SetSyntaxHl(cols);
    vim.api.nvim_set_hl(0, "Normal", {
        fg = cols.structure
    })
    vim.api.nvim_set_hl(0, "@lsp.type.struct", {
        fg = cols.type
    })
end

function SetLspHl(cols)
    SetSyntaxHl(cols);
    vim.api.nvim_set_hl(0, "@lsp.type.struct", {
        fg = cols.type
    })
    vim.api.nvim_set_hl(0, "@lsp.type.enum", {
        fg = cols.type
    })
    vim.api.nvim_set_hl(0, "@type.definition", {
        fg = cols.type
    })
    vim.api.nvim_set_hl(0, "@lsp.type.typeParameter", {
        fg = cols.type
    })
    vim.api.nvim_set_hl(0, "@lsp.type.class", {
        fg = cols.type
    })
    vim.api.nvim_set_hl(0, "@lsp.type.parameter", {
        fg = cols.para
    })
    vim.api.nvim_set_hl(0, "@lsp.type.property", {
        fg = cols.prop
    })
    vim.api.nvim_set_hl(0, "@lsp.type.variable", {
        fg = cols.var
    })


    vim.api.nvim_set_hl(0, "@type.builtin.c_sharp", {
        fg = cols.type
    })
    vim.api.nvim_set_hl(0, "@variable.builtin.c_sharp", {
        fg = cols.var
    })
end

function SetNeoGitHl(cols)
    vim.api.nvim_set_hl(0, "NeogitDiffAddHighlight", {
        bg = colors_p_cappuc.green,
        fg = 'Black'
    })
    vim.api.nvim_set_hl(0, "NeogitDiffAdd", {
        bg = colors_p_cappuc.green,
        fg = 'Black'
    })
    vim.api.nvim_set_hl(0, "NeogitDiffDelete", {
        bg = cols.err,
        fg = 'Black'
    })
    vim.api.nvim_set_hl(0, "NeogitDiffDeleteHighlight", {
        bg = cols.err,
        fg = 'Black'
    })
end

function SetOdinHl(cols)
    vim.api.nvim_set_hl(0, "@variable.parameter.odin", {
        fg = cols.para
    })
end

function SetAllHlGroups(cols)
    SetSyntaxHl(cols);
    SetNeoGitHl(cols)
    SetLspHl(cols)
    SetOdinHl(cols)
end

vim.api.nvim_create_user_command(
    'JonkSetSyntaxHl',
    function(opts)
        if opts.fargs[1] == "cap1" then
            SetAllHlGroups(cappu);
        end
        if opts.fargs[1] == "cap2" then
            SetAllHlGroups(cappu_2);
        end
    end, {
        nargs = 1,
        complete = function(ArgLead, CmdLine, CursorPos)
            -- return completion candidates as a list-like table
            return { "cap1", "cap2", }
        end,
    }
)

