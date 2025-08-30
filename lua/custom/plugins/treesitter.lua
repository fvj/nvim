return {
  { 
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    branch = "master",
    config = function ()
      require('nvim-treesitter.configs').setup {
	ensure_installed = { "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "rust", "python" },

	auto_install = true,
	highlight = {
	  enable = true,
	  additional_vim_regex_highlighting = false,
	}
      }
    end
  }
}
