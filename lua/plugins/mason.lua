return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "prettierd",
        "astro-language-server",
        "tailwindcss-language-server",
        "vtsls",
      },
    },
  },
}
