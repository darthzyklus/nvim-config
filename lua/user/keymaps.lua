local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
--local keymap = vim.api.nvim_set_keymap
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Move text up and down
keymap("n", "<M-j>", ":m .+1<CR>==", opts)
keymap("n", "<M-k>", ":m .-2<CR>==", opts)

keymap("i", "<M-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("i", "<M-k>", "<Esc>:m .-2<CR>==gi", opts)

keymap("v", "<M-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<M-k>", ":m '<-2<CR>gv=gv", opts)


-- Move to previous buffer
keymap("", "<leader><leader>", "<c-^>", opts)

keymap("n", "<leader>a", function() require("harpoon.mark").add_file() end, opts)
keymap("n", "<leader>e", function() require("harpoon.ui").toggle_quick_menu() end, opts)
keymap("n", "<leader>1", function() require("harpoon.ui").nav_file(1) end, opts)
keymap("n", "<leader>2", function() require("harpoon.ui").nav_file(2) end, opts)
keymap("n", "<leader>3", function() require("harpoon.ui").nav_file(3) end, opts)
keymap("n", "<leader>4", function() require("harpoon.ui").nav_file(4) end, opts)



keymap("n", "<leader>f", function() require('telescope.builtin').find_files() end, opts)
keymap("n", "<leader>b", function() require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({ previewer = false })) end, opts)

