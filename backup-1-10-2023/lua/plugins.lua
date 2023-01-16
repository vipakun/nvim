local packer = require("packer")
packer.startup({
  function(use)
    -- Packer is managing itself
    use('wbthomason/packer.nvim')
    -- theme gruvbox
    use({
      "ellisonleao/gruvbox.nvim",
      requires = { "rktjmp/lush.nvim" },
    })

    -- My Plugins..
    -- mason
    use({ "williamboman/mason.nvim" })
    use({ "williamboman/mason-lspconfig.nvim" })

    -- nvim-tree
    use({
      "kyazdani42/nvim-tree.lua",
      requires = {
        "kyazdani42/nvim-web-devicons", -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    })
    -- top buffer
    use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })
    -- buttom info
    use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
    use("arkav/lualine-lsp-progress")
    -- searching telescope
    use({ 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } })
    -- telescope plugin
    use({ 'LinArcX/telescope-env.nvim' })
    -- dashboard
    use({ 'glepnir/dashboard-nvim' })
    use({ 'ahmedkhalf/project.nvim' })
    -- tree-sitter hightlight the syntax
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    -- LSP
    use("williamboman/nvim-lsp-installer")
    -- Lspconfig
    use({ "neovim/nvim-lspconfig" })
    -- 补全引擎
    use("hrsh7th/nvim-cmp")
    -- snippet 引擎
    use("hrsh7th/vim-vsnip")
    -- 补全源
    use("hrsh7th/cmp-vsnip") --installation failed
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- { name = 'path' }
    use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

    -- 常见编程语言代码段
    use("rafamadriz/friendly-snippets")
    -- lua ui
    use("onsails/lspkind-nvim")
    use("tami5/lspsaga.nvim")
    -- indent-blankline
    use("lukas-reineke/indent-blankline.nvim")
    -- formatter
    use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
    -- jsonls
    use({ "b0o/schemastore.nvim" })
    -- tsserver
    use({ "jose-elias-alvarez/nvim-lsp-ts-utils", requires = "nvim-lua/plenary.nvim" })

    -- trailing whitespaces and empty lines at the end of the buffer.
    use({
      "mcauley-penney/tidy.nvim",
      config = function()
        require("tidy").setup({
          filetype_exclude = { "markdown", "diff" }
        })
      end
    })
  end,
  config = {
    display = {
      open_fn = function()
        return require("packer.util").float({ border = "single" })
      end,
    },
  },
})


-- auto install plugins when save plugins.lua file.
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
