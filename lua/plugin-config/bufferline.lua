local status, bufferline = pcall(require, "bufferline")
if not status then
    vim.notify("No found bufferline")
  return
end

-- bufferline configration 
-- https://github.com/akinsho/bufferline.nvim#configuration
bufferline.setup({
  options = {
    -- close Tab，use moll/vim-bbye  :Bdelete command
    close_command = "Bdelete! %d",
    right_mouse_command = "Bdelete! %d",
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left",
      },
    },
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and " " or (e == "warning" and " " or "")
        s = s .. n .. sym
      end
      return s
    end,
  },
})
