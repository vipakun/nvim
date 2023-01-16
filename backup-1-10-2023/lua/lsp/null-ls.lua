local status, null_ls = pcall(require, "null-ls")
if not status then
  vim.notify("cannot find null-ls")
  return
end

local formatting = null_ls.builtins.formatting

null_ls.setup({
  debug = false,
  sources = {
    -- Formatting ---------------------
    --  brew install shfmt
    formatting.shfmt,
    -- StyLua
    formatting.stylua,
    -- frontend
    formatting.prettier.with({ -- 只比默认配置少了 markdown
      filetypes = {
        "javascript",
        "markdown",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        -- "vue",
        "css",
        "lua",
        -- "scss",
        -- "less",
        "html",
        "json",
        "yaml",
        "graphql",
      },
      prefer_local = "node_modules/.bin",
    }),
     -- rustfmt
    -- rustup component add rustfmt
    formatting.rustfmt,
    -- Python
    -- pip install black
    -- asdf reshim python
    formatting.black.with({ extra_args = { "--fast" } }),
    -----------------------------------------------------
    -- Ruby
    -- gem install rubocop
    --    formatting.rubocop,
    -----------------------------------------------------
    -- formatting.fixjson,
    -- Diagnostics  ---------------------
    
    --diagnostics.eslint.with({
    --  prefer_local = "node_modules/.bin",
    -- }),
    
    -- diagnostics.markdownlint,
    -- markdownlint-cli2
    -- diagnostics.markdownlint.with({
    --   prefer_local = "node_modules/.bin",
    --   command = "markdownlint-cli2",
    --   args = { "$FILENAME", "#node_modules" },
    -- }),
    --
    -- code actions ---------------------
    -- code_actions.gitsigns,
    --code_actions.eslint.with({
    --  prefer_local = "node_modules/.bin",
    -- }),
  },
  -- 保存自动格式化
  diagnostics_format = "[#{s}] #{m}",
  on_attach = function(client)
    if client.server_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end
  end,
})
