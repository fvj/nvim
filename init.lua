vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

vim.opt.mouse = ""
vim.opt.shiftwidth = 2

require('custom.lazy')

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = vim.api.nvim_create_augroup('jvf-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end
})
