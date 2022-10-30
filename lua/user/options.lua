local options = {
	backup = false,                         -- creates a backup file
	number = true,                          -- set numbered lines
	relativenumber = true,                  -- set relative numbered lines
	shiftwidth = 2,                         -- the number of spaces inserted for each indentation
	tabstop = 2,                            -- insert 2 spaces for a tab
}


-- TODO: research what does the option below
vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

