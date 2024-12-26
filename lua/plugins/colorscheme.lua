return {
  -- Add the One Dark theme plugin
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- Ensure it loads early for seamless theming
    config = function()
      require("onedark").setup({
        -- Theme style options: "dark", "darker", "cool", "deep", "warm", "warmer", "light"
        style = "deep",
        transparent = false, -- Set to true if you want a transparent background
        term_colors = true, -- Use terminal colors
        ending_tildes = false, -- Show tildes (~) at the end of buffers
        cmp_itemkind_reverse = false, -- Reverse item kind highlights in cmp menu
        code_style = {
          comments = "italic", -- Options: "none", "bold", "italic"
          keywords = "bold", -- Options: "none", "bold", "italic"
          functions = "none", -- Options: "none", "bold", "italic"
          strings = "none", -- Options: "none", "bold", "italic"
          variables = "none", -- Options: "none", "bold", "italic"
        },
        lualine = {
          transparent = false, -- Lualine will match theme background
        },
        colors = {}, -- Override default colors (e.g., { fg = "#ff0000", bg = "#000000" })
        highlights = {}, -- Override highlight groups (e.g., { TSFunction = { fg = "#ff0000" } })
        diagnostics = {
          darker = true, -- Use darker colors for diagnostics
          undercurl = true, -- Show undercurl for diagnostics
          background = true, -- Use background color for virtual text
        },
      })
      -- Load the theme
      require("onedark").load()
    end,
  },

  -- Set LazyVim to use One Dark as the colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
