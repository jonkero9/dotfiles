function Jhover()
    vim.lsp.buf.definition { on_list = function(opts)
        print(vim.inspect(opts))
        --        local buff = vim.api.nvim_create_buf(false, true)
        --        vim.api.nvim_buf_set_lines(buff, -2, -1, false, { "hell" })
        --        local win = vim.api.nvim_open_win(buff, false,
        --            {
        --                relative = 'win',
        --                row = 3,
        --                col = 3,
        --                title = 'titttle',
        --                width = 12,
        --                height = 3,
        --                style = 'minimal',
        --                border = 'single'
        --            })
        --        vim.api.nvim_win_set_option(win, 'winhl', 'Normal:Normal')
    end }
end

vim.api.nvim_create_user_command(
    'Jhover',
    function()
        Jhover();
    end,
    {})
