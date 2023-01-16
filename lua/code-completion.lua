-- completeopt is used to manage code suggestions
-- menuone: show popup even when there is only one suggestion
-- noinsert: Only insert text when selection is confirmed
-- noselect: force us to select one from the suggestions
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert', 'preview'}
-- shortmess is used to avoid excessive messages
vim.opt.shortmess = vim.opt.shortmess + { c = true}

-- ^^ neovim configuration ^^

local cmp = require'cmp'

cmp.setup({
  -- sources are the installed sources that can be used for code suggestions
  sources = {
      { name = 'path' },
      { name = 'nvim_lsp', keyword_length = 3 },
      { name = 'nvim_lsp_signature_help'}, 
      { name = 'nvim_lua', keyword_length = 2},
      { name = 'buffer', keyword_length = 2 },
      { name = 'vsnip', keyword_length = 2 },
  },
  -- Window for styling
  window = {
	completion = cmp.config.window.bordered(),
	documentation = cmp.config.window.bordered(),
  },
  -- formatting
  formatting = {
	fields = {'menu', 'abbr', 'kind'},
	format = function(entry, item)
		local menu_icon = {
			nvim_lsp = 'λ',
              		vsnip = '⋗',
              		buffer = 'b',
              		path = 'p'
		}
		item.menu = menu_icon[entry.source.name]
		return item
	end,
  },
  -- Mappings keyboard shortcuts
  mapping = {
	-- Tab: go to next sugguest item
	['<Tab>'] = cmp.mapping.select_next_item(),
	-- Shift+Tab: go to previous suggest item
	['<S-Tab>'] = cmp.mapping.select_prev_item(),
	-- CTRL+SPACE: bring up the code completion to show up
	['<C-Space>'] = cmp.mapping.complete(),
	-- CTRL+e: exit code completion
	['<C-e>'] = cmp.mapping.close(),
	-- Press Enter to Confirm and apply
	['<CR>'] = cmp.mapping.confirm({
		behavior = cmp.ConfirmBehavior.Insert,
		select = true,
	}),
	
  }
})

