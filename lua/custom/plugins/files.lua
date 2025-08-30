return {
  {
    "stevearc/oil.nvim",
    config = function()
      require('oil').setup({
	columns = { "icon", "size" },
	skip_confirm_for_simple_edits = true,
	watch_for_changes = true,
      })

      vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
    end,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
  }
}
