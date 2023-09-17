# Customize zsh, tmux, and nvim-lua

## Shortcuts

### Finder
- `Enter`: Rename file or folder
- `Space`: Open preview as pop-up
- `⇧ + ⌘ + N`: New folder
- `⌘ + ⌫`: Remove file
- `⌘ + T`: Open tab
- `⌘ + [`: Move to previous folder
- `⌘ + ]`: Move to the next folder
- `⌘ + ↑`: Move to parent folder
- `⌘ + ↓`: Move to selected folder or run selected file
- `⇧ + ⌘ + .`: Toggle whether hidden files are exposed or not

## How to Install
```zsh
$ git clone https://github.com/tridge-hq/nvim-lua.git
$ cd nvim-lua
# Init system setting
$ ./system_setting.zsh
# Customize zsh, tmux and nvim-lua
$ ./install.sh
```

## Directory
```
├── README.md
├── init.lua
├── install.sh
├── lua
│   ├── configs.lua
│   ├── core.lua
│   ├── init.lua
│   ├── keymaps.lua
│   ├── lazy-lock.json
│   ├── lsp.lua
│   └── plugins.lua
├── tmux.conf
└── zshrc
```

## Plugins
### Tmux
- alexghergh/nvim-tmux-navigation

### Theme/Appearance
- nvim-lualine/lualine.nvim
- akinsho/bufferline.nvim
- lukas-reineke/indent-blankline.nvim
- EdenEast/nightfox.nvim

### Basics
- matze/vim-move
- nvim-lua/plenary.nvim
- folke/which-key.nvim
- junegunn/fzf
- junegunn/fzf.vim
- numToStr/Comment.nvim
- nvim-tree/nvim-tree.lua
- nvim-tree/nvim-web-devicons
- tpope/vim-surround
- tpope/vim-repeat
- tpope/vim-sensible
- tpope/vim-dadbod
- kristijanhusak/vim-dadbod-ui
- kristijanhusak/vim-dadbod-completion
- rstacruz/sparkup
- justinmk/vim-sneak
- godlygeek/tabular
- majutsushi/tagbar
- mbbill/undotree
- vim-scripts/matchit.zip
- Raimondi/delimitMate
- michaeljsmith/vim-indent-object
- nathanaelkane/vim-indent-guides
- mhinz/vim-startify
- tiagovla/scope.nvim
- johmsalas/text-case.nvim

### HOP
- phaazon/hop.nvim

### Snippet
- honza/vim-snippets
- mg979/vim-visual-multi
- saadparwaiz1/cmp_luasnip
- L3MON4D3/LuaSnip

### Language/Syntax
- williamboman/mason.nvim
- neovim/nvim-lspconfig
- williamboman/mason-lspconfig.nvim
- glepnir/lspsaga.nvim
- nvim-treesitter/nvim-treesitter
- jay-babu/mason-null-ls.nvim
- hrsh7th/nvim-cmp
- hrsh7th/cmp-nvim-lsp
- hrsh7th/cmp-buffer
- hrsh7th/cmp-path
- hrsh7th/cmp-cmdline
- mitsuhiko/vim-jinja
- jose-elias-alvarez/null-ls.nvim

### Git
- airblade/vim-gitgutter
- tpope/vim-fugitive
- lewis6991/gitsigns.nvim

### neogen
- danymat/neogen

