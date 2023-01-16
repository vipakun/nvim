---- basic
--require('basic')
---- keybinding
--require('keybindings')
---- plugins
--require('plugins')
---- theme
--require('colorscheme') 
---- plugins
--require('plugin-config.nvim-tree')
--require('plugin-config.bufferline')
--require('plugin-config.lualine')
--require('plugin-config.telescope')
--require('plugin-config.dashboard')
--require('plugin-config.project')
--require('plugin-config.nvim-treesitter')
---- build-in LSP server
--require('lsp.setup')
--require('lsp.cmp')
--require('lsp.ui')
--require('plugin-config.indent-blankline')
--require('lsp.null-ls')
require('core.keymaps')
require('core.plugins')
require('core.plugin_config')


--require('plugins')
--require('nvim-tree-file-explorer')
--require('mason-config')
--require('tspls')
--require('code-completion')
--require('custom-keys')
--require('styling')
--require('treesitter-syntax-highlight')
--require('telescope-file-finder')
--require('statusbar-lualine')
