local options = {
	backup = false,                          -- creates a backup file
	number = true,                           -- set numbered lines
	relativenumber = true,                   -- set relative numbered lines
	shiftwidth = 2,                          -- the number of spaces inserted for each indentation
	tabstop = 2,                             -- insert 2 spaces for a tab
	showtabline = 0,                         -- don't show tabs
	wrap = false,
	ignorecase = true,                       -- ignore case in search patterns
	smartindent = true,                      -- make indenting smarter again
	swapfile = false,                        -- creates a swapfile
	termguicolors = true,                    -- set term gui colors (most terminals support this)
	updatetime = 50,                        -- faster completion (4000ms default)
	signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
	scrolloff = 8,
	sidescrolloff = 8,
}


-- disable give ins-completion-menu messages
vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=c formatoptions-=r formatoptions-=o]] -- TODO: this doesn't seem to work


