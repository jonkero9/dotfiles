vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "File Explorer" })

-- ZZ remaps
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

local tele_built = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', tele_built.find_files, { desc = "Find Files" })
vim.keymap.set('n', '<leader>fg', tele_built.live_grep, { desc = "Grep" })
vim.keymap.set('n', '<leader>fb', tele_built.buffers, { desc = "Find Buffers" })
vim.keymap.set('n', '<leader>fh', tele_built.help_tags, { desc = "Find Help" })
vim.keymap.set('n', '<leader>fc', tele_built.command_history, { desc = "COMMAND HISTORY" })
vim.keymap.set('n', '<leader>e', tele_built.diagnostics, { desc = "Diagnostics" })
vim.keymap.set('n', '<leader>gs', tele_built.git_status, { desc = "Git Status" })
vim.keymap.set('n', '<leader>t', tele_built.builtin, { desc = "Telescope" })

vim.keymap.set('n', '<leader>gg', "<cmd>LazyGit<cr>", { desc = "Lazy Git" })
vim.keymap.set('n', '<leader>ss', "<cmd>write<cr>", { desc = "Write File" })
vim.keymap.set('n', '<leader>gg', "<cmd>LazyGit<cr>", { desc = "Lazy Git" })

-- Which Key Setup

local wk = require("which-key")
wk.add({
    {
        { "<leader>wF", "<cmd>FormatWrite<cr>", desc = "Formatter Format" },
    }

})
