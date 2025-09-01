enabled_lsps = { "rust_analyzer", "nixd", "clangd" }

return {
  "neovim/nvim-lspconfig",
  config = function()
    for _, lsp in pairs(enabled_lsps) do
      vim.lsp.enable(lsp)
    end
  end,
}
