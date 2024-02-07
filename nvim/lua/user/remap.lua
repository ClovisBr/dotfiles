vim.g.mapleader = " "

-- TEST --
vim.keymap.set("n", "´", ":lua print('hello')<CR>", { silent = true })
-- TEST --

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { silent = true })
vim.keymap.set("n", "<C-e>", "<C-e>j", { silent = true })
vim.keymap.set("n", "<C-y>", "<C-y>k", { silent = true })
vim.keymap.set("n", "<C-f>", ":exe 'normal' ((line('.') * 10) / line('$')) * 10 + 10 . '%'<CR>zz", { silent = true })
vim.keymap.set("n", "<C-b>", ":exe 'normal' (line('$') / 100) * 11 . 'k'<CR>zz", { silent = true })
vim.keymap.set("n", "n", "nzzzv", { silent = true })
vim.keymap.set("n", "N", "Nzzzv", { silent = true })

vim.keymap.set("n", "k", "gk", { silent = true })
vim.keymap.set("n", "j", "gj", { silent = true })
vim.keymap.set("n", "<Up>", "gk", { silent = true })
vim.keymap.set("n", "<Down>", "gj", { silent = true })
vim.keymap.set("i", "<Up>", "<Esc>g<Up><Right>", { silent = true })
vim.keymap.set("i", "<Down>", "<Esc>g<Down><Right>", { silent = true })
vim.keymap.set("i", "<Right>", "<Esc>ll", { silent = true })
vim.keymap.set("i", "<Left>", "<Esc>", { silent = true })

vim.keymap.set("x", "<leader>p", '"_dP')
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')

vim.keymap.set({ "i", "n" }, "<C-c>", "<Esc>", { silent = true })

vim.keymap.set("n", "<leader>x", ":q<CR>", { silent = true })
vim.keymap.set("n", '<leader>"', ":split<CR><C-w>j", { silent = true })
vim.keymap.set("n", "<leader>%", ":vsplit<CR><C-w>l", { silent = true })
