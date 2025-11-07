-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Auto Session --
vim.keymap.set("n", "<C-p>", ":AutoSession search<CR>", { desc = "List Sessions" })

-- NVim Tree --
vim.keymap.set("n", "<C-f>", ":NvimTreeToggle<CR>", { desc = "Toggle Explorer" })

-- Telescope --
vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "Live Grep" })
vim.keymap.set("n", "<leader>fs", require("telescope.builtin").grep_string)
vim.keymap.set("v", "<leader>fs", function()
    vim.cmd('normal! "zy')
    local selected_text = vim.fn.getreg("z")
    require("telescope.builtin").grep_string({ search = selected_text })
end, { noremap = true, silent = true, desc = "Search selected text" })

-- Snacks --
local Snacks = require("snacks")
vim.keymap.set("n", "<C-h>", function()
    Snacks.picker.buffers()
end, { desc = "Show Buffers (Snacks)" })

-- Agentic Coder --
vim.api.nvim_set_keymap("n", "<leader>ac", ":ClaudeCode --continue<CR>", { noremap = true, silent = true })

-- COPY --
-- Ccopy current file with line number
vim.keymap.set("n", "<leader>yl", function()
    local path_line = vim.fn.expand("%") .. ":" .. vim.fn.line(".")
    vim.fn.setreg("+", path_line)
    print("Copied: " .. path_line)
end, { desc = "Copy file path with line number" })
