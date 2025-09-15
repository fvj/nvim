return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      signs = false,
      highlight = {
	multiline = true,
	multiline_pattern = "^.",
	multiline_context = 10,
	before = "",
	keyword = "wide",
	after = "fg",
	pattern = [[.*<(KEYWORDS)(\(\w+\))?\s*:]], -- pattern or table of patterns, used for highlighting (vim regex)
	comments_only = true, -- uses treesitter to match keywords in comments only
	max_line_len = 400, -- ignore lines longer than this
	exclude = {}, -- list of file types to exclude highlighting
      },
    },
  }
}
