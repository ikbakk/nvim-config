return {
  {
    "TheBlob42/houdini.nvim",
    config = function()
      require("houdini").setup({
        mappings = { "jk" },
        timeout = vim.o.timeoutlen,
        check_modified = true,
        excluded_filetypes = {},
        escape_sequences = {
          ["i"] = "<BS><BS><ESC>",
          ["ic"] = "<BS><BS><ESC>",
          ["ix"] = "<BS><BS><ESC>",
          ["R"] = "<BS><BS><RIGHT><ESC>",
          ["Rc"] = "<BS><BS><ESC>",
          ["Rx"] = "<BS><BS><ESC>",
          ["Rv"] = "<BS><BS><RIGHT><ESC>",
          ["Rvc"] = "<BS><BS><ESC>",
          ["Rvx"] = "<BS><BS><ESC>",
          ["v"] = escape_and_undo,
          ["vs"] = escape_and_undo,
          ["V"] = escape_and_undo,
          ["Vs"] = escape_and_undo,
          ["^V"] = escape_and_undo,
          ["^Vs"] = escape_and_undo,
          ["no"] = escape_and_undo,
          ["nov"] = escape_and_undo,
          ["noV"] = escape_and_undo,
          ["no^V"] = escape_and_undo,
          ["s"] = '<BS><BS><ESC>:u! | call histdel("cmd", -1) | echo ""<CR>',
          ["S"] = '<BS><BS><ESC>:u! | call histdel("cmd", -1) | echo ""<CR>',
          ["^S"] = '<BS><BS><ESC>:u! | call histdel("cmd", -1) | echo ""<CR>',
          ["t"] = "<BS><BS><C-\\><C-n>",
          ["c"] = "<BS><BS><C-c>",
        },
      })
    end,
  },
}
