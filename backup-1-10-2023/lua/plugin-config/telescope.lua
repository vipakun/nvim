local status, telescope = pcall(require, "telescope")
if not status then
  vim.notify("Not Found telescope")
  return
end

telescope.setup({
  defaults = {
    -- initial mode.  default mode insert，or normal
    initial_mode = "insert",
    -- keybinding inside of telescope
    mappings = require("keybindings").telescopeList,
  },
  pickers = {
    -- 内置 pickers 配置
    find_files = {
      -- 查找文件换皮肤，支持的参数有： dropdown, cursor, ivy
      -- theme = "dropdown", 
    }
  },
  extensions = {
     -- 扩展插件配置
     pcall(telescope.load_extension, "env")
  },
})

