return {
  -- LuaSnip plugin
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "nvim-lua/plenary.nvim", -- Required for LuaSnip (general utilities)
      "rafamadriz/friendly-snippets", -- Optional, provides a collection of predefined snippets
      "danymat/neogen", -- Optional, integrates with Neogen for auto-generating doc comments
      "nvim-treesitter/nvim-treesitter", -- Required for Neogen to work with LuaSnip
    },
    config = function()
      -- LuaSnip setup
      require("luasnip").setup({
        history = true, -- Keep a history of previously used snippets
        update_events = "TextChanged,TextChangedI", -- Update snippets during typing
      })

      -- Optionally load friendly snippets
      require("luasnip.loaders.from_vscode").lazy_load()

      -- Neogen setup (auto-generating documentation comments)
      require("neogen").setup({
        snippet_engine = "luasnip", -- Use LuaSnip as the snippet engine
      })

      -- Helper functions for snippet expansion and navigation
      _G.snip_expand_or_jump = function()
        if require("luasnip").expand_or_jumpable() then
          require("luasnip").expand_or_jump()
        end
      end

      _G.snip_jump_back = function()
        if require("luasnip").jumpable(-1) then
          require("luasnip").jump(-1)
        end
      end

      -- Keybindings for Snippet Expansion and Navigation
      vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.snip_expand_or_jump()", { expr = true, silent = true })
      vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.snip_expand_or_jump()", { expr = true, silent = true })
      vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.snip_jump_back()", { expr = true, silent = true })
      vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.snip_jump_back()", { expr = true, silent = true })
    end,
  },
}
