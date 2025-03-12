vim.cmd("let g:netrw_liststyle = 3") -- make netrw display in tree view

local opt = vim.opt

vim.opt.number = true -- show line numbers
opt.relativenumber = true -- make line numbers relative

-- tabs and indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting a new one

opt.wrap = false -- turn off line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case sensitive

-- color settings. needed to make coloschemes display properly
opt.termguicolors = true
opt.background = "dark" -- colorschemes that have both a light and dark background will default to dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- all backspace to indendt, end of line, or insert mode start position

-- clipboard
vim.opt.clipboard = "unnamedplus" -- use the system clipboard for copy pasta

--split windows
opt.splitright = true -- when splitting vertically the new window will go to the right
opt.splitbelow = true -- when splitting horizontally the new window will go below
