return {
  "luckasRanarison/tailwind-tools.nvim",
  name = "tailwind-tools",
  build = ":UpdateRemotePlugins",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim", -- optional
    "neovim/nvim-lspconfig", -- optional
  },
  opts = {},
  keys = {
    { "<leader>t", desc = "Tailwind Tools" },
    -- Conceal related keymaps
    { "<leader>tc", "<cmd>TailwindConcealToggle<cr>", desc = "Toggle Tailwind Conceal" },

    -- Color hint related keymaps
    { "<leader>tC", "<cmd>TailwindColorToggle<cr>", desc = "Toggle Tailwind Color Hints" },

    -- Sorting related keymaps
    { "<leader>ts", "<cmd>TailwindSortSync<cr>", desc = "Sort Tailwind Classes (Sync)" },
    { "<leader>tS", "<cmd>TailwindSortSelection<cr>", desc = "Sort Selected Tailwind Classes" },

    -- Navigation keymaps
    { "<leader>tn", "<cmd>TailwindNextClass<cr>", desc = "Jump to Next Tailwind Class" },
    { "<leader>tp", "<cmd>TailwindPrevClass<cr>", desc = "Jump to Previous Tailwind Class" },
  },
}
