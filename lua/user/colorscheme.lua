
--vim.o.termguicolors = true

vim.cmd [[
try
  colorscheme tokyonight-night
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

vim.cmd "highlight LineNr term=bold cterm=NONE ctermfg=DarkCyan ctermbg=NONE gui=NONE guifg=DarkCyan guibg=NONE"
vim.cmd "highlight Normal ctermbg=NONE guibg=NONE"
vim.cmd "highlight SignColumn guibg=NONE"

