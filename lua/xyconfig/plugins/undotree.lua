return {
  "mbbill/undotree",
	config = function()
    local keymap = vim.keymap -- for conciseness
    keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>", { desc = "Toggle Undotree" }) -- toggle Undo Tree
  end
}
