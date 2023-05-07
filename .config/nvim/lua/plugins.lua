vim.cmd.packadd 'packer.nvim'

require('packer').startup({
  function(use)
    use 'vim-jp/vimdoc-ja'
    use 'folke/tokyonight.nvim'
    use 'petertriho/nvim-scrollbar'
    use 'tkmpypy/chowcho.nvim'
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }
    -- highlight arguments using treesiter
    use 'm-demare/hlargs.nvim'
    use 'p00f/nvim-ts-rainbow'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-live-grep-args.nvim'

    use {
      'nvim-telescope/telescope-frecency.nvim',
      requires = { 'kkharji/sqlite.lua' }
    }
    use 'nvim-telescope/telescope-packer.nvim'

    use 'simeji/winresizer'

    use 'numToStr/Comment.nvim'

    use {
      'phaazon/hop.nvim',
      branch = 'v2',
      config = function()
        require 'hop'.setup {}
      end
    }

    use {
      'akinsho/toggleterm.nvim',
      tag = '*',
      config = function()
        require('toggleterm').setup()
      end
    }

    use 'akinsho/nvim-bufferline.lua'

    -- Git
    use {
      'TimUntersberger/neogit',
      requires = 'nvim-lua/plenary.nvim'
    }
    use {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup()
        require('scrollbar.handlers.gitsigns').setup()
      end
    }

    use {
      'kwkarlwang/bufresize.nvim',
      config = function()
        require('bufresize').setup()
      end
    }

    -- For React
    use 'windwp/nvim-ts-autotag'
    use 'windwp/nvim-autopairs'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'ray-x/cmp-treesitter'

    use 'onsails/lspkind.nvim'

    use 'L3MON4D3/LuaSnip'

    -- use 'kkharji/lspsaga.nvim'
    use 'folke/lsp-colors.nvim'
    use {
      'folke/trouble.nvim',
      requires = 'nvim-tree/nvim-web-devicons',
      -- Packer
    }

    use 'jose-elias-alvarez/null-ls.nvim'
    use 'jayp0521/mason-null-ls.nvim'
    use 'stevearc/dressing.nvim'
    use 'tami5/lspsaga.nvim'
    use 'ray-x/lsp_signature.nvim'

    use 'https://git.sr.ht/~whynothugo/lsp_lines.nvim'

    -- Unless you are still migrating, remove the deprecated commands from v1.x
    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

    use {
      'nvim-neo-tree/neo-tree.nvim',
      branch = 'v2.x',
      requires = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
        'MunifTanjim/nui.nvim',
      }
    }
    -- Greeter 4 Neovim
    use 'goolord/alpha-nvim'

    use({
      'folke/noice.nvim',
      requires = {
        'rcarriga/nvim-notify',
      }
    })

    use {
      'romgrk/barbar.nvim',
      requires = {
        'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
        'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
      }
    }

    use 'norcalli/nvim-colorizer.lua'

    use 'mvllow/modes.nvim'

    use 'lukas-reineke/indent-blankline.nvim'


    use 'booperlv/nvim-gomove'
    use 'RRethy/vim-illuminate'
    use 'kevinhwang91/nvim-hlslens'

    use { 'wbthomason/packer.nvim', opt = true }
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
  end,
  -- Packer Management Screen Setting
  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
})
