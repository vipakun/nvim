return {
	"linux-cultist/venv-selector.nvim",
	-- dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
	dependencies = {
		"neovim/nvim-lspconfig",
		"mfussenegger/nvim-dap",
		"mfussenegger/nvim-dap-python", --optional
		{ "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
	},
	opts = {
		-- Your options go here
		auto_refresh = false,
		name = "venv",
		pipenv_path = "/Users/xy/.local/share/virtualenvs/profiles-rest-api-ggUO1Wqa",
		--		pyenv_path = "/users/xy/env/bin/python",
	},
	branch = "regexp", -- This is the regexp branch, use this for the new version
	event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
	keys = {
		{
			-- Keymap to open VenvSelector to pick a venv.
			"<leader>vs",
			"<cmd>:VenvSelect<cr>",
			-- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
			"<leader>vc",
			"<cmd>:VenvSelectCached<cr>",
		},
	},
}
