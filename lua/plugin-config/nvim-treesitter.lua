local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    vim.notify("nvim-treesitter not found")
    return
end

treesitter.setup({
  -- install language parser
  -- :TSInstallInfo supported languages
  ensure_installed = { "json", "html", "css", "vim", "lua", "javascript", "typescript", "tsx", "graphql", "sql", "rust", "python" },
  --  start using hightlights
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  }
})
