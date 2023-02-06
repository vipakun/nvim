local setup, undotree = pcall(require, "undotree")
if not setup then
	return
end

undotree.setup()
