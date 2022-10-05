local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("No found nvim-tree")
  return
end

local list_keys = require("keybindings").nvimTreeList

nvim_tree.setup({
  -- disable netrw
  disable_netrw = true,
  -- do not show git status
  git = {
    enable = false,
  },
  -- project plugin settings
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  filters = {
    -- hiden files
    dotfiles = true,
    -- hide node_modules folder
    -- custom = { "node_modules" },
  },
  view = {
    width = 34,
    side = "left",
    -- hide folder
    hide_root_folder = false,
    -- custom short cut
    mappings = {
      custom_only = true,
      list = list_keys,
    },
    -- not show line number
    number = false,
    relativenumber = false,
    -- show icons
    signcolumn = "yes",
  },
  actions = {
    open_file = {
      -- resize when first time opens
      resize_window = true,
      -- close when open file
      quit_on_open = false,
    },
  },
  system_open = {
    -- mac
    cmd = "open",
  },
    -- project plugin for dashboard-project
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },

})
