return {
  'nvim-telescope/telescope.nvim', 
  branch = '0.1.x',
  dependencies = { 
    'nvim-lua/plenary.nvim', 
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    require('telescope').setup {
      extensions = { fzf = {} },
    }
    require('telescope').load_extension('fzf')

    vim.keymap.set("n", "<leader>sf", require('telescope.builtin').find_files, { desc = "search files" })
    vim.keymap.set("n", "<leader>ss", require('telescope.builtin').git_files, { desc = "search source" })
    vim.keymap.set("n", "<leader>sh", require('telescope.builtin').help_tags, { desc = "help tags" })
    vim.keymap.set("n", "<leader>sg", require('telescope.builtin').live_grep, { desc = "live grep" })
    vim.keymap.set("n", "<leader>sds", require("telescope.builtin").lsp_document_symbols, { desc = "search document symbols" })
    vim.keymap.set("n", "<leader>sws", require("telescope.builtin").lsp_workspace_symbols, { desc = "search workspace symbols" })

    vim.keymap.set("n", "<leader>b", require("telescope.builtin").buffers, { desc = "select buffers" })

    vim.keymap.set("n", "<leader>gd", require("telescope.builtin").lsp_definitions, { desc = "goto definition(s)" })
    vim.keymap.set("n", "<leader>gr", require("telescope.builtin").lsp_references, { desc = "goto references" })

    vim.keymap.set("n", "<leader>vb", require("telescope.builtin").git_branches, { desc = "checkout git branch" })
  end,
}
