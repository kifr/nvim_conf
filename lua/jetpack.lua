local jetpackfile = vim.fn.stdpath('data') .. '/site/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim'
local jetpackurl = "https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim"
if vim.fn.filereadable(jetpackfile) == 0 then
  vim.fn.system(string.format('curl -fsSLo %s --create-dirs %s', jetpackfile, jetpackurl))
end

vim.cmd('packadd vim-jetpack')

require('jetpack.paq') {
  'tani/vim-jetpack', -- bootstrap
  'Shatur/neovim-ayu',
  {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    requires = { {'nvim-lua/plenary.nvim'} }
  },

  -- nvim-cmpとその依存プラグイン
  'hrsh7th/nvim-cmp',          -- 補完プラグイン
  'hrsh7th/cmp-nvim-lsp',      -- LSPソース
  'hrsh7th/cmp-buffer',        -- バッファソース
  'hrsh7th/cmp-path',          -- パスソース
  'hrsh7th/cmp-cmdline',       -- コマンドラインソース
  'L3MON4D3/LuaSnip',          -- スニペットエンジン
  'saadparwaiz1/cmp_luasnip',  -- スニペット補完

  -- LSP
  'neovim/nvim-lspconfig',

  -- Mason
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',

  -- terminal
  'akinsho/toggleterm.nvim',

  -- 閉じ括弧の挿入
  'cohama/lexima.vim',
}
