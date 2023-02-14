-- import nvim-treesitter plugin safely
local status, better_white_space = pcall(require, "vim-better-whitespace")
if not status then
	return
end

-- configure treesitter
better_white_space.setup({})
