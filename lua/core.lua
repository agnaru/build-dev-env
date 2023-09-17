-- vim core

vim.g.mapleader = ','

-- vim sql_omni_key
-- https://neovim.io/doc/user/ft_sql.html
vim.g.ftplugin_sql_omni_key = '<C-;>'
-- vim.o.syntax = 'enable'
vim.o.nocompatible = true
vim.o.autoindent = true
vim.o.backspace = 'indent,eol,start'
vim.o.backupdir = os.getenv('HOME') .. '/.tmp/vim/backup/'
vim.o.directory = os.getenv('HOME') .. '/.tmp/vim/swap/'
vim.o.undodir = os.getenv('HOME') .. '/.tmp/vim/undo/'
vim.o.colorcolumn = '109'
vim.o.copyindent = true
vim.o.nocursorline = true
vim.o.encoding = 'utf8'
vim.o.expandtab = true
vim.o.formatoptions = 'cqnr1'
vim.o.gdefault = true
vim.o.hidden = true
vim.o.history = '1000'
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.incsearch = true
vim.o.laststatus = 2
vim.o.nolist = true
vim.o.nojoinspaces = true
vim.o.number = true
vim.o.pastetoggle = '<Leader>p'
vim.o.relativenumber = true
vim.o.ruler = true
vim.o.scrolloff = '1'
vim.o.shiftwidth = 4
vim.o.showcmd = true
vim.o.showmatch = true
vim.o.smartcase = true
vim.o.smarttab = true
vim.o.softtabstop = 2
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.tabstop = 2
vim.o.textwidth = '109'
vim.o.title = true
vim.o.undofile = true
vim.o.undolevels = 1000
vim.o.visualbell = true
vim.o.wildignore = vim.o.wildignore .. '*.o,*.out,*.obj,*.so,*.pyc'
vim.o.wildignore = vim.o.wildignore .. '*.so,*.swp,*.zip,*.pyc'
vim.o.wildignore = vim.o.wildignore .. '*.swp,*~,._*'
vim.o.wildignore = vim.o.wildignore .. '*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz'
vim.o.wildmenu = true
vim.o.wildmode = 'list:longest'
vim.o.wrap = true
vim.o.mouse = 'a'
vim.o.updatetime = 100
vim.o.timeoutlen = 400
vim.o.termguicolors = true

function SETLOCALPERFILETYPE()
  local filetype = vim.bo.filetype
  if filetype == 'python' or filetype == 'sql' then
    vim.cmd [[set ts=4 sw=4 sts=4 expandtab]]
  else
    vim.cmd [[set ts=2 sw=2 sts=2 expandtab]]
  end
end

vim.api.nvim_create_autocmd('BufEnter', {
  command = 'silent! lua SETLOCALPERFILETYPE()',
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', ':Lspsaga goto_definition<CR>', opts)
    -- vim.keymap.set('n', 'gd', ':Lspsaga goto_definition<CR>', opts)
    -- vim.keymap.set('n', 'K', ':Lspsaga hover_doc<CR>', opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    -- vim.keymap.set('n', 'K', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>D', ':Lspsaga goto_type_definition<CR>', opts)
    vim.keymap.set('n', '<space>rn', ':Lspsaga rename<CR>', opts)
    vim.keymap.set('n', '<space>ca', ':Lspsaga code_action<CR>', opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, opts)
  end,
})

---------------
-- dadbob-ui --
vim.g.db_ui_use_nerd_fonts = 1
vim.g.db_ui_show_database_icon = 1
