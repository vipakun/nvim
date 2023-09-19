return {
   "kdheepak/lazygit.nvim",
   -- optional for floating window border decoration
   dependencies = {
       "nvim-lua/plenary.nvim",
   },

  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "Open LazyGit" })
  end,
}
