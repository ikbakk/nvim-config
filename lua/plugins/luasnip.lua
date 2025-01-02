return {
  {
    "L3MON4D3/LuaSnip",
    config = function()
      local ls = require("luasnip")

      -- LuaSnip setup
      ls.setup({
        history = true,
        update_events = "TextChanged,TextChangedI",
        enable_autosnippets = true,
        region_check_events = "CursorMoved",
        delete_check_events = "TextChanged,InsertLeave",
      })

      -- Key mappings for LuaSnip
      vim.keymap.set({ "i", "s" }, "<M-f>", function()
        if ls.expand_or_jumpable() then
          ls.expand_or_jump()
        end
      end, { desc = "Expand or jump in snippet" })

      vim.keymap.set({ "i", "s" }, "<M-S-f>", function()
        if ls.jumpable(-1) then
          ls.jump(-1)
        end
      end, { desc = "Jump backwards in snippet" })

      vim.keymap.set({ "i", "s" }, "<M-c>", function()
        if ls.choice_active() then
          ls.change_choice(1)
        end
      end, { desc = "Change choice in snippet" })

      -- Load snippets
      require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/config/snippets/" })
      require("luasnip.loaders.from_vscode").lazy_load()

      -- Ensure <Tab> and <S-Tab> are not affected by LuaSnip
      vim.keymap.set("i", "<Tab>", "<Tab>", { noremap = true })
      vim.keymap.set("i", "<S-Tab>", "<S-Tab>", { noremap = true })
    end,
  },
}
