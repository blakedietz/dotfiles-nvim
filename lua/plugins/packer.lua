require('packer').startup(function(use)
  use {'wbthomason/packer.nvim'}

  use {'neovim/nvim-lspconfig'}

  -- cmp framework for auto-completion support
  use {'hrsh7th/nvim-cmp'}

  -- install different completion source
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}

  -- you need a snippet engine for snippet support
  -- here I'm using vsnip which can load snippets in vscode format
  use {'hrsh7th/vim-vsnip'}
  use {'hrsh7th/cmp-vsnip'}

  -- treesitter for syntax highlighting and more
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- File find behavior
  use {'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = {'nvim-lua/plenary.nvim'}}

  -- git
  use {'tpope/vim-fugitive'}
  use {'sodapopcan/vim-twiggy'}

  use {'TimUntersberger/neogit', requires = {'nvim-lua/plenary.nvim', 'sindrets/diffview.nvim'}}
  use { 'lewis6991/gitsigns.nvim' }

  -- File tree
  use {
  'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use {'akinsho/bufferline.nvim', tag = 'v2.*', requires = 'kyazdani42/nvim-web-devicons'}
  use { 'numToStr/Comment.nvim' }

  use {
    'pwntester/octo.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'kyazdani42/nvim-web-devicons',
    },
    config = function ()
      require'octo'.setup()
    end
  }

  use {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  }

  use { 'ggandor/leap.nvim' }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {'jose-elias-alvarez/null-ls.nvim'}
  use {'MunifTanjim/prettier.nvim'}

  use {'kevinhwang91/nvim-bqf'}
  -- optional
  use {'junegunn/fzf', run = function()
      vim.fn['fzf#install']()
  end
  }

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {'lukas-reineke/indent-blankline.nvim'}
  use {'mfussenegger/nvim-dap'}
  use {'rcarriga/nvim-dap-ui', requires = {'mfussenegger/nvim-dap'}}
  use {'JoosepAlviste/nvim-ts-context-commentstring'}
end)

