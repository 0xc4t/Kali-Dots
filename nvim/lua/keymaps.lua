vim.keymap.set("n", "<C-d>", ":vsplit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-s>", ":split<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true })


vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-s>", "<Esc><cmd>w<CR>a", { noremap = true, silent = true })

vim.keymap.set("n", "<C-f>", "/", { noremap = true })
