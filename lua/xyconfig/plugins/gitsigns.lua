return {
  "lewis6991/gitsigns.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
    require('gitsigns').setup { current_line_blame = true }
  end
}
