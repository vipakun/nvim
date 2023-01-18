require("project_nvim").setup {
  detection_methods = { "lsp", "pattern" },
  patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
}

local status, telescope = pcall(require, "telescope")
if not status then
  vim.notify("not Found telescope")
  return
end
pcall(telescope.load_extension, "projects")
