enabled_lsps = { "rust_analyzer", "clangd", "kotlin_language_server", "pyright", "vtsls", "zls" }

return {
  "neovim/nvim-lspconfig",
  config = function()
    for _, lsp in pairs(enabled_lsps) do
      vim.lsp.enable(lsp)
    end
  end,
}
