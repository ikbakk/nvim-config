return {
    "stevearc/conform.nvim",
      ops = {
            formatters_by_ft = {
                astro = { "prettier" },
                javascript = { "prettier" },
                typescript = { "prettier" },
                javascriptreact = { "prettier" },
                typescriptreact = { "prettier" },
                css = { "prettier" },
                html = { "prettier" },
                json = { "prettier" },
                yaml = { "prettier" },
                markdown = { "prettier" },
                lua = { "stylua" },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            },
        }
}