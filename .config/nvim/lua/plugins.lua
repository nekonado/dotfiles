vim.cmd.packadd 'packer.nvim'

require('packer').startup(function(use)
  -- -----------
  -- start
  -- -----------
  -- vimdoc-ja
  use 'vim-jp/vimdoc-ja'

  -- Color Scheme
  -- use "EdenEast/nightfox.nvim"
  use 'folke/tokyonight.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  use 'petertriho/nvim-scrollbar'

  use 'tkmpypy/chowcho.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'm-demare/hlargs.nvim',
    requires = { 'nvim-treesitter/nvim-treesitter' }
  }
  use 'p00f/nvim-ts-rainbow'

  -- use {
  --   'nvim-telescope/telescope.nvim',
  --   tag = '0.1.1'
  -- }
  use 'nvim-telescope/telescope.nvim'

  use {
    "nvim-telescope/telescope-frecency.nvim",
    config = function()
      require "telescope".load_extension("frecency")
    end,
    requires = { "kkharji/sqlite.lua" }
  }

  use 'simeji/winresizer'

  use 'tpope/vim-commentary'

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
      require("toggleterm").setup()
    end
  }

  use 'akinsho/nvim-bufferline.lua'

  -- Git
  use {
    'TimUntersberger/neogit',
    requires = 'nvim-lua/plenary.nvim'
  }
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup()
      require("scrollbar.handlers.gitsigns").setup()
    end
  }

  use {
    'kwkarlwang/bufresize.nvim',
    config = function()
      require("bufresize").setup()
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

  use 'onsails/lspkind.nvim'

  use "L3MON4D3/LuaSnip"

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
  -- use "glepnir/lspsaga.nvim"
  use 'ray-x/lsp_signature.nvim'

  -- neo-tree.nvim
  -- Unless you are still migrating, remove the deprecated commands from v1.x
  vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
  -- Greeter 4 Neovim
  use {
    'goolord/alpha-nvim',
    config = function()
      require 'alpha'.setup(require 'alpha.themes.startify'.config)
    end
  }

  use({
    "folke/noice.nvim",
    requires = {
      "rcarriga/nvim-notify",
    }
  })

  use 'RRethy/vim-illuminate'
  use 'norcalli/nvim-colorizer.lua'

  use 'mvllow/modes.nvim'

  use "lukas-reineke/indent-blankline.nvim"

  use 'nvim-telescope/telescope-packer.nvim'

  -- -----------
  -- opt
  -- -----------
  use { 'wbthomason/packer.nvim', opt = true }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)

-- require('packer').startup(function()
-- -- 起動時に読み込むプラグインは名前を書くだけです
-- use "tpope/vim-fugitive"
-- use "tpope/vim-repeat"
--
-- -- opt オプションを付けると遅延読み込みになります。
-- -- この場合は opt だけで読み込む契機を指定していないため、
-- -- packadd コマンドを叩かない限り読み込まれることはありません。
-- use { "wbthomason/packer.nvim", opt = true }
-- -- packer.nvim 自体を遅延読み込みにする理由はまた後ほど。
--
-- -- コマンドを叩いたときに読み込む。
-- use { "rhysd/git-messenger.vim", opt = true, cmd = { "GitMessenger" } }
--
-- -- 特定のイベントで読み込む
-- use { "tpope/vim-unimpaired", opt = true, event = { "FocusLost", "CursorHold" } }
--
-- -- 特定のファイルタイプのファイルを開いたら読み込む
-- use { "fatih/vim-go", opt = true, ft = { "go" } }
--
-- -- 特定のキーを叩いたら読み込む
-- -- この例ではノーマルモードの <CR> にマッピングしていますが、
-- -- モードを指定する場合はテーブルを入れ子にします。
-- -- keys = {
-- --   { "n", "<CR>" },
-- --   { "v", "<CR>" },
-- -- }
-- use {
--   "arecarn/vim-fold-cycle",
--   opt = true,
--   keys = { "<CR>" },
-- }
--
-- -- 特定の VimL 関数を呼ぶと読み込む
-- -- この例だと、任意の場所で Artify("hoge", "bold") のように呼び出された時に、
-- -- このプラグインも読み込まれます。
-- use { "sainnhe/artify.vim", opt = true, fn = { "Artify" } }
--
-- -- 実は opt = true は省略できます。読み込む契機（この例では cmd）を指定すると、
-- -- 自動的に遅延読み込みとみなされます。
-- use {
--   "npxbr/glow.nvim",
--   cmd = { "Glow", "GlowInstall" },
--   -- run オプションを指定すると、インストール時・更新時に
--   -- 実行するコマンドを指定できます。
--   run = [[:GlowInstall]],
--   -- 先頭に : がついていないなら bash -c "..." で実行されます。
--   -- run = [[npm install]],
--   -- 関数も指定可能です。
--   -- run = function()
--   --   vim.cmd.GlowInstall()
--   -- end,
-- }
--
-- -- 条件が真の時のみ読み込みます。条件は起動時に毎回判定されます。
-- use {
--   "thinca/vim-fontzoom",
--   cond = [[vim.fn.has"gui" == 1]], -- GUI の時のみ読み込む。
--   -- 関数も指定できます。
--   -- conf = function()
--   --   return vim.fn.has "gui" == 1
--   -- end,
-- }
--
-- -- 依存関係も管理できます。vim-prettyprint は capture.vim に依存しています。
-- use {
--   "tyru/capture.vim",
--   requires = {
--     { "thinca/vim-prettyprint" },
--   },
-- }
-- end)
