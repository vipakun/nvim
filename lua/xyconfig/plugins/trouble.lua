return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local keymap = vim.keymap
    -- Lua
    keymap.set("n", "<leader>xx", function() require("trouble").open() end)
    keymap.set("n", "<leader>xw", function() require("trouble").open("workspace_diagnostics") end)
    keymap.set("n", "<leader>xd", function() require("trouble").open("document_diagnostics") end)
    keymap.set("n", "<leader>xq", function() require("trouble").open("quickfix") end)
    keymap.set("n", "<leader>xl", function() require("trouble").open("loclist") end)
    keymap.set("n", "gR", function() require("trouble").open("lsp_references") end)
  end,
}
