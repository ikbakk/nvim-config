-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.neovide_input_use_logo = true -- Enable use of logo key for clipboard shortcuts
vim.g.neovide_clipboard = true -- Ensure clipboard integration is on

vim.opt.clipboard = "unnamedplus"

vim.api.nvim_set_keymap("n", "dd", '"_dd', { noremap = true, silent = true }) -- Delete line without copying
vim.api.nvim_set_keymap("n", "p", '"_p', { noremap = true, silent = true }) -- Replace without copying
vim.api.nvim_set_keymap("x", "d", '"_d', { noremap = true, silent = true }) -- Delete without copying in visual mode

vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-a>", "<Esc>ggVG", { noremap = true, silent = true })
