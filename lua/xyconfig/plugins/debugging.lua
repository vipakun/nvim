return {
	"mfussenegger/nvim-dap",
	dependencies = {
    "mxsdev/nvim-dap-vscode-js",
    "mfussenegger/nvim-dap-python",
    -- "mrcjkb/rustaceanvim" -- for rust
		"leoluz/nvim-dap-go",
		"rcarriga/nvim-dap-ui",
    "tpope/vim-fugitive",
	},
	config = function()
    require("dapui").setup()
		require("dap-go").setup()
    require("dap-vscode-js").setup({
      adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' },
    })
    require('dap-python').setup()

		local dap, dapui = require("dap"), require("dapui")

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		vim.keymap.set("n", "<Leader>db", ":DapToggleBreakpoint<CR>")
		vim.keymap.set("n", "<Leader>dc", ":DapContinue<CR>")
		vim.keymap.set("n", "<Leader>dx", ":DapTerminate<CR>")
		vim.keymap.set("n", "<Leader>do", ":DapStepOver<CR>")
	end,
}
