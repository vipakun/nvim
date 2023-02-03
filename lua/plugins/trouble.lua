-- import nvim-autopairs safely
local trouble_setup, trouble = pcall(require, "trouble")
if not trouble_setup then
	return
end

trouble.setup({
	defaults = {
		mappings = {
			i = { ["<c-t>"] = trouble.open_with_trouble },
			n = { ["<c-t>"] = trouble.open_with_trouble },
		},
	},
})
