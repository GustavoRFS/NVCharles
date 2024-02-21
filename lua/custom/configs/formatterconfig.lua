require("conform").setup({
  formatters_by_ft = {
    typescript = { { "ts-standard", "prettierd", "prettier" } }
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  }
})
