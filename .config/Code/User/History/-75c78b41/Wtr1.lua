--                   ______     ___           __ __
--                  / ____/__  / (_)  __     / //_/_  ____  ______
--                 / /_  / _ \/ / / |/_/    / ,< / / / / / / / __ \
--                / __/ /  __/ / />  <     / /| / /_/ / /_/ / / / /
--               /_/    \___/_/_/_/|_|____/_/ |_\__, /\__,_/_/ /_/
--                                  /_____/    /____/
--                          nvim config file [settings.lua]

-- define the set variable to make it easier to change settings
local set = vim.opt

-- Settings

set.tabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.showmatch = true 
set.ignorecase = true
set.hlsearch = true
set.incsearch = true
set.softtabstop = 4
set.expandtab = true 
set.autoindent = true
set.number = true
set.syntax = [[on]]
set.mouse = [[a]]
set.ttyfast = true
set.title = true
set.splitbelow = true
set.splitright = true
set.termguicolors = true
set.colorscheme = [[onedark]]


-- vimscript
vim.cmd([[
    filetype plugin indent on
]])