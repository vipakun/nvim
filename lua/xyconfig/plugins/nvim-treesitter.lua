return {
	{
		-- provide hightlight
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = {
			"windwp/nvim-ts-autotag",
		},
		config = function()
			-- import nvim-treesitter plugin
			local treesitter = require("nvim-treesitter.configs")

			-- configure treesitter
			treesitter.setup({ -- enable syntax highlighting
				highlight = {
					enable = true,
				},
				-- enable indentation
				indent = { enable = true },
				-- enable autotagging (w/ nvim-ts-autotag plugin)
				autotag = { enable = true },
				-- ensure these language parsers are installed
				ensure_installed = {
					"json",
					"javascript",
					"typescript",
					"tsx",
					"yaml",
					"html",
					"css",
					"rust",
					"python",
					"sql",
					"markdown",
					"markdown_inline",
					"graphql",
					"bash",
					"lua",
					"vim",
					"vimdoc",
					"dockerfile",
          "query",
					"gitignore",
				},
				-- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
				-- context_commentstring = {
				-- 	enable = true,
				-- 	enable_autocmd = false,
				-- },
				-- auto install above language parsers
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        },
				auto_install = true,
			})
		end,
	},
}
