require('packer').startup(function(use)
    use {'wbthomason/packer.nvim'}

    -- LSP
    use {'neovim/nvim-lspconfig'}
    use {'jose-elias-alvarez/null-ls.nvim'}


    -- Completion --
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
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- git
    use {'tpope/vim-fugitive'}
    use {
        'pwntester/octo.nvim',
        requires = {'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim', 'kyazdani42/nvim-web-devicons'},
        config = function()
            require'octo'.setup()
        end
    }
    use {'lewis6991/gitsigns.nvim'}
    -- What does this do?
    use {
        'TimUntersberger/neogit',
        requires = {'nvim-lua/plenary.nvim', 'sindrets/diffview.nvim'}
    }

    -- File tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons' -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- Status tabs
    use {
        'akinsho/bufferline.nvim',
        tag = 'v2.*',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    
    -- Commenting
    use {'numToStr/Comment.nvim'}
    use {'JoosepAlviste/nvim-ts-context-commentstring'}


    use {'ggandor/leap.nvim'}
    -- Status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }

    -- Better quick fix window
    use {'kevinhwang91/nvim-bqf'}

    -- optional
    use {
        'junegunn/fzf',
        run = function()
            vim.fn['fzf#install']()
        end
    }

    -- Telesocpe and fzf integration
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
    }
    -- Indentatin guides
    use {'lukas-reineke/indent-blankline.nvim'}

    -- Find and replace
    use {'windwp/nvim-spectre'}

    -- Find
    use({
      "nvim-telescope/telescope.nvim",
      requires = { { "nvim-lua/plenary.nvim" }, { "kdheepak/lazygit.nvim" } },
      config = function()
          require("telescope").load_extension("lazygit")
      end,
    })

    -- Session behavior
    use 'ethanholz/nvim-lastplace'
    use({
      "folke/persistence.nvim",
      event = "BufReadPre", -- this will only start session saving when an actual file was opened
      module = "persistence",
      config = function()
      end,
    })

    use({ "mhanberg/elixir.nvim", requires = { "nvim-lua/plenary.nvim" }})

    use({
      "glepnir/lspsaga.nvim",
      branch = "main"
    })

    -- Lua
    use {
      "folke/which-key.nvim",
      config = function()
        require("which-key").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }

    use { "epwalsh/obsidian.nvim" }

    use { "ThePrimeagen/git-worktree.nvim" }
end)

