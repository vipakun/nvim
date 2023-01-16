require'nvim-treesitter.configs'.setup{
	ensure_install = {"lua", "vim", "rust", "css", "typescript", "tsx", "scss", "php", "python", "regex", "html", "javascript", "json", "graphql"},
	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,
	auto_install = true,
	highlight = {
  	-- `false` will disable the whole extension
    enable = true,
  },
  indent = {
    enable = true,
  }
}

