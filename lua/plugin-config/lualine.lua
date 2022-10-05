-- notify if cannot find lualine
local status, lualine = pcall(require, "lualine")
if not status then
    vim.notify("Not found lualine")
  return
end

lualine.setup({
  options = {
    theme = "gruvbox",
    component_separators = { left = "|", right = "|" },
    -- https://github.com/ryanoasis/powerline-extra-symbols
    section_separators = { left = '>', right = '>' },
  },
  extensions = { "nvim-tree", "toggleterm" },
  sections = {
    lualine_c = {
      "filename",
      {
        "lsp_progress",
        spinner_symbols = { " ", " ", " ", " ", " ", " " },
      },
    },
    lualine_x = {
      "filesize",
      {
        "fileformat",
        symbols = {
          mac = '', -- e711
        },
       -- symbols = {
       --   mac = "CR",
       --},
      },
      "encoding",
      "filetype",
    },
  },
})
