local colors = {
  blue = "#61afef",
  green = "#98c379",
  purple = "#c678dd",
  cyan = "#56b6c2",
  red1 = "#e06c75",
  red2 = "#be5046",
  yellow = "#e5c07b",
  fg = "#abb2bf",
  bg = "#282c34",
  gray1 = "#828997",
  gray2 = "#2c323c",
  gray3 = "#3e4452",
}

local custom_theme = {
  normal = {
    a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
    b = { fg = colors.fg, bg = colors.gray1 },
    c = { fg = colors.fg, bg = colors.bg },
  },
  command = { a = { fg = colors.bg, bg = colors.green, gui = "bold" } },
  insert = { a = { fg = colors.bg, bg = colors.blue, gui = "bold" } },
  visual = { a = { fg = colors.bg, bg = colors.purple, gui = "bold" } },
  terminal = { a = { fg = colors.bg, bg = colors.cyan, gui = "bold" } },
  replace = { a = { fg = colors.bg, bg = colors.red1, gui = "bold" } },
  inactive = {
    a = { fg = colors.gray1, bg = colors.bg, gui = "bold" },
    b = { fg = colors.gray1, bg = colors.bg },
    c = { fg = colors.gray1, bg = colors.bg },
  },
}

local function get_mode_abbreviation()
  local mode_map = {
    ["n"] = "N", -- Normal
    ["i"] = "I", -- Insert
    ["v"] = "V", -- Visual
    ["V"] = "VL", -- Visual Line
    [""] = "VB", -- Visual Block
    ["c"] = "C", -- Command
    ["R"] = "R", -- Replace
    ["t"] = "T", -- Terminal
  }
  -- Get the current mode and return the corresponding abbreviation
  return mode_map[vim.fn.mode()] or "U" -- Default to 'U' for unrecognized modes
end

local function custom_location()
  local line = vim.fn.line(".")
  local col = vim.fn.col(".")
  return string.format("%d/%d", line, col)
end

return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        icons_enabled = true,
        theme = custom_theme,
      },
      sections = {
        lualine_a = { get_mode_abbreviation },
        lualine_y = {},
        lualine_z = { { custom_location, icon = "" } },
      },
    },
  },
}
