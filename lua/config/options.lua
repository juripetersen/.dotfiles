local o = vim.opt

-- Editor
o.number = true
o.relativenumber = true
o.signcolumn = "yes"
o.cursorline = true
o.colorcolumn = "80"
o.scrolloff = 8
o.wrap = false
o.showmode = false
o.mouse = "a"
o.foldenable = false
o.lazyredraw = true
o.synmaxcol = 500
o.timeoutlen = 300
o.updatetime = 300
o.listchars = { nbsp = "¬", extends = "»", precedes = "«", trail = "•" }

-- Indentation
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.smartindent = true

-- Search
o.hlsearch = false
o.ignorecase = true
o.smartcase = true
o.gdefault = true

-- Splits
o.splitright = true
o.splitbelow = true

-- Permanent undo
o.undofile = true
o.undodir = vim.fn.expand("~/.vimdid")

-- Wrapping: wrap text/comments, continue comments, gq on comments, lists, no old long lines
o.formatoptions = "tcrqnb"

-- Diff
o.diffopt:append({ "iwhite", "algorithm:patience", "indent-heuristic" })

-- Wildmenu
o.wildmode = "list:longest"
o.wildignore = { ".hg", ".svn", "*~", "*.png", "*.jpg", "*.gif", "*.settings", "Thumbs.db",
  "*.min.js", "*.swp", "publish/*", "intermediate/*", "*.o", "*.hi", "Zend", "vendor" }

-- Completion
o.completeopt = { "menu", "menuone", "noselect" }
o.shortmess:append("c")
