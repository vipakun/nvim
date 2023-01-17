require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "sumneko_lua", "html", "jsonls", "tsserver", "pylsp", "eslint", "graphql", "rust_analyzer", "dockerls", "cssls"}
})

local on_attach = function (_, bufnr)
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, bufopts)
end

local capabilities =  require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").sumneko_lua.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global  
        globals = {'vim'},
      },
    }
  }
}
