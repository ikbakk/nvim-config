return {
  {
    "monkoose/neocodeium",
    event = "VeryLazy",
    config = function()
      local neocodeium = require("neocodeium")
      neocodeium.setup()

      -- Keybinding to accept suggestions only when a suggestion is available
      vim.keymap.set("i", "<Tab>", function()
        -- If NeoCodeium has a suggestion, accept it
        if neocodeium.visible() then
          neocodeium.accept()
        else
          -- Otherwise, perform the normal indentation (send <Tab> as key event)
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", true)
        end
      end, { noremap = true, silent = true })
    end,
  },
}
