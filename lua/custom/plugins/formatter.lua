return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
	python = { "isort", "black" },
	rust = { "rusfmt" },
	javascript = { "prettier" }
      },
      format_on_save = {
	timeout_ms = 500,
	lsp_format = "fallback",
      }
    }
  }
}
