-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Open NERDTree in a new tab
local keymap = vim.keymap
keymap.set("n", "<leader>q", ":q!<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>p", ":PencilSoft | ZenMode | set nonumber | set norelativenumber<CR>", { silent = true })
keymap.set("n", "<leader>z", ":ZenMode<CR>", { silent = true })
keymap.set("n", "<leader>t", ":ObsidianTemplate<CR>", { silent = true })

-- Pomo Timer Commands
keymap.set("n", "<leader>a", ":TimerStart 25m Write<CR>")
keymap.set("n", "<leader>d", ":TimerStop 1 <CR>")
keymap.set("n", "<leader>A", ":TimerStart 5m Break<CR>")
