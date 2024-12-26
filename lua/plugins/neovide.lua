if vim.g.neovide then
  -- Display settings
  vim.g.neovide_transparency = 1
  vim.g.neovide_scroll_animation_length = 0.2
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0
  vim.g.neovide_window_blurred = true
  vim.g.neovide_transparency = 0.6
  vim.g.neovide_scroll_animation_far_lines = 0
  vim.g.neovide_refresh_rate = 75

  -- Cursor Settings
  vim.g.neovide_cursor_trail_size = 0.05
  vim.g.neovide_cursor_animate_in_insert_mode = true
  vim.g.neovide_cursor_smooth_blink = true
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_cursor_animation_length = 0.1
  vim.g.neovide_cursor_vfx_opacity = 200
  vim.g.neovide_cursor_vfx_particle_lifetime = 1
  vim.g.neovide_cursor_vfx_particle_speed = 9.0
  vim.g.neovide_cursor_vfx_particle_phase = 1.5
  vim.g.neovide_cursor_vfx_particle_curl = 1.0

  -- Font Settings
  vim.o.guifont = "JetBrainsMono Nerd Font:h11" -- Adjust the font and size

  -- Keybinds
  vim.g.neovide_input_use_logo = 1
  vim.api.nvim_set_keymap("", "<C-v>", "+p<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("!", "<C-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("t", "<C-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("v", "<C-v>", "<C-R>+", { noremap = true, silent = true })
end

return {}
