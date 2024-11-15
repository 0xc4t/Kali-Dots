vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader= " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}
local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  }
}

require("lazy").setup(plugins, opts)

--require catppuccin
require("catppuccin").setup()

--set the colorscheme to it!
vim.cmd.colorscheme "catppuccin"

vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]

-- setup telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-l>', builtin.find_files, {})
vim.keymap.set('n', '<C-r>', builtin.live_grep, {})

-- setup nvim-tree
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
