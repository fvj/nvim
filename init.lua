vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

vim.opt.mouse = ""
vim.opt.shiftwidth = 2
vim.opt.signcolumn = 'yes:2'
vim.opt.scrolloff = 10

require('custom.lazy')

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = vim.api.nvim_create_augroup('jvf-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end
})

local function toggle_quickfix()
  local qf_open = false
  for _, win in ipairs(vim.fn.getwininfo()) do
    if win.quickfix == 1 then
      qf_open = true
      break
    end
  end

  vim.diagnostic.setqflist()
  local qflist = vim.fn.getqflist()
  if qf_open then
    vim.cmd("cclose")
  elseif #qflist > 0 then
    vim.cmd("copen")
  else
    vim.notify("nothing to fix. nice.", vim.log.levels.INFO)
  end
end

vim.keymap.set("n", "<leader>q", toggle_quickfix)
