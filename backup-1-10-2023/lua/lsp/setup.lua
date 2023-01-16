-- local lsp_installer = require("nvim-lsp-installer")


-- local lsp_installer = require("nvim-lsp-installer")
require("nvim-lsp-installer").setup({
  -- 自动安装 Language Servers
  automatic_installation = true,
})
local lspconfig = require("lspconfig")


-- Installation List
-- { key: language   value: configuration file }
-- key: has to be coming from the following list
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
local servers = {
  -- sumneko_lua = require("lsp.config.lua"), -- lua/lsp/config/lua.lua
  html = require("lsp.config.html"),
  emmet_ls = require("lsp.config.emmet"),
  cssls = require("lsp.config.css"),
  jsonls = require("lsp.config.json"),
  tsserver = require("lsp.config.ts"),
}
-- 自动安装 Language Servers
--for name, _ in pairs(servers) do
--  local server_is_found, server = lsp_installer.get_server(name)
--  if server_is_found then
--    if not server:is_installed() then
--      print("Installing " .. name)
--      server:install()
--    end
--  end
--end
--
--lsp_installer.on_server_ready(function(server)
--    local config = servers[server.name]
--    if config == nil then
--        return
--    end
--    if config.on_setup then
--        config.on_setup(server)
--    else
--        server:setup({})
--    end
--end)


for name, config in pairs(servers) do
  if config ~= nil and type(config) == "table" then
    -- 自定义初始化配置文件必须实现on_setup 方法
    config.on_setup(lspconfig[name])
  else
    -- 使用默认参数
    lspconfig[name].setup({})
  end
end
