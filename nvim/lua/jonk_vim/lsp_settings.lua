require("mason").setup()
require("mason-lspconfig").setup()

vim.lsp.enable("lua_ls")
vim.lsp.enable("ols")
vim.lsp.enable("zls")
vim.lsp.enable("clangd")
vim.lsp.enable("jsonls")
vim.lsp.enable("ts_ls")
vim.lsp.enable("html")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("jdtls")
vim.lsp.enable("eslint")

local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.lsp.config('*', {
    capabilities = capabilities,
})

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        local map = function(keys, func, desc)
            vim.keymap.set('n', keys, func, { buffer = ev.buf, desc = 'Lsp: ' .. desc })
        end

        local tele = require("telescope.builtin")
        map('gd', tele.lsp_definitions, 'Goto Definition')
        map('<leader>fs', tele.lsp_document_symbols, 'Doc Symbols')
        map('<leader>fS', tele.lsp_dynamic_workspace_symbols, 'Dynamic Symbols')
        map('<leader>ft', tele.lsp_type_definitions, 'Goto Type')
        map('<leader>fr', tele.lsp_references, 'Goto References')
        map('<leader>fi', tele.lsp_implementations, 'Goto Impl')

        map('K', vim.lsp.buf.hover, 'hover')
        map('<leader>E', vim.diagnostic.open_float, 'diagnostic')
        map('<leader>k', vim.lsp.buf.signature_help, 'sig help')
        map('<leader>rn', vim.lsp.buf.rename, 'rename')
        map('<leader>ca', vim.lsp.buf.code_action, 'code action')
        map('<leader>wf', vim.lsp.buf.format, 'format')

        vim.keymap.set('v',
            '<leader>ca',
            vim.lsp.buf.code_action, { buffer = ev.buf, desc = 'Lsp: code_action' })
    end,
})
