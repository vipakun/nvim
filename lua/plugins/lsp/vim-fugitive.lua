-- import vim-fugitive plugin safely
local status, fugitive = pcall(require, "vim-fugitive")
if not status then
	return
end

fugitive.setup({})
