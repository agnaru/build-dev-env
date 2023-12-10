return {
  --Tmux
  'alexghergh/nvim-tmux-navigation',

  --Theme/Appearance
  'nvim-lualine/lualine.nvim',
  'akinsho/bufferline.nvim',
  'lukas-reineke/indent-blankline.nvim',
  'EdenEast/nightfox.nvim',

  --Basics
  'matze/vim-move',
  'nvim-lua/plenary.nvim',
  'folke/which-key.nvim',
  'junegunn/fzf',
  'junegunn/fzf.vim',
  -- 'terrortylor/nvim-comment',
  'numToStr/Comment.nvim',
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'tpope/vim-surround',
  'tpope/vim-repeat',
  'tpope/vim-sensible',
  'tpope/vim-dadbod',
  'kristijanhusak/vim-dadbod-ui',
  'kristijanhusak/vim-dadbod-completion',
  'rstacruz/sparkup',
  'justinmk/vim-sneak',
  'godlygeek/tabular',
  'majutsushi/tagbar',
  'mbbill/undotree',
  'vim-scripts/matchit.zip',
  'Raimondi/delimitMate',
  'michaeljsmith/vim-indent-object',
  'nathanaelkane/vim-indent-guides',
  'mhinz/vim-startify',
  'tiagovla/scope.nvim',
  'johmsalas/text-case.nvim',

  -- HOP
  {
    "phaazon/hop.nvim",
    config = true,
    keys = {
      { "f", function() require("hop").hint_char1() end, desc = "hop 1", mode = { "n", "v" } },
      { "F", function() require("hop").hint_char2() end, desc = "hop 2", mode = { "n", "v" } },
    },
  },
  --Snippet
  'honza/vim-snippets',
  'mg979/vim-visual-multi',
  'saadparwaiz1/cmp_luasnip',
  'L3MON4D3/LuaSnip',

  --Language/Syntax
  'williamboman/mason.nvim',
  'neovim/nvim-lspconfig',
  'williamboman/mason-lspconfig.nvim',
  'glepnir/lspsaga.nvim',
  'nvim-treesitter/nvim-treesitter',
  'jay-babu/mason-null-ls.nvim',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'mitsuhiko/vim-jinja',
  'nvimtools/none-ls.nvim',

  --Git
  'airblade/vim-gitgutter',
  'tpope/vim-fugitive',
  'lewis6991/gitsigns.nvim',

  -- neogen
  {
    "danymat/neogen",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    ft = {
      "python",
      "sh",
    },
    config = function()
      local lang_doc_map = {
        python = "google_docstrings",
        sh = "google_bash",
      }
      local languages = {}
      for lang, doc in ipairs(lang_doc_map) do
        languages[lang]["template"]["annotation_convention"] = doc
      end
      require("neogen").setup({
        enabled = true,
        snippet_engine = "luasnip",
        languages = languages,
      })
    end,
    keys = {
      { "<leader>nd", "<cmd>Neogen<CR>", desc = "Neogen" },
    },
  },
}
