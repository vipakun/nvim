vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  	-- Packer can manage itself
  	use 'wbthomason/packer.nvim'
	-- mason and lsp
  	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'

	-- Plugins for code completion
    	use 'hrsh7th/nvim-cmp' 
    	use 'hrsh7th/cmp-nvim-lsp'
    	use 'hrsh7th/cmp-nvim-lua'
    	use 'hrsh7th/cmp-nvim-lsp-signature-help'
    	use 'hrsh7th/cmp-vsnip'                             
    	use 'hrsh7th/cmp-path'                              
    	use 'hrsh7th/cmp-buffer'                            
    	use 'hrsh7th/vim-vsnip'	

	-- Nvimtree
	use {
		'nvim-tree/nvim-tree.lua',
  		requires = {
    			'nvim-tree/nvim-web-devicons', -- optional, for file icons
  		},
  		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	
	-- Gruvbox theme
	use 'ellisonleao/gruvbox.nvim'

	use {
		-- recommended packer way of installing it is to run this function, copied from documentation
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}

	use {
  		'nvim-telescope/telescope.nvim', tag = '0.1.0', 
		-- or                          , branch = '0.1.x',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		  'nvim-lualine/lualine.nvim',
		  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
end)
