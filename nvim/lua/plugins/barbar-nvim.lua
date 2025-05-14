return {
  'romgrk/barbar.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  config = function()
    require('barbar').setup({
      animation = true,
      auto_hide = false,
      tabpages = true,
      clickable = true,
      icons = {
        buffer_index = true,
        filetype = {
          enabled = true,
        },
        separator = { left = '▎', right = '' },
        modified = { button = '●' },
        pinned = { button = '📌', filename = true },
      },
      insert_at_start = false,
      maximum_padding = 2,
      minimum_padding = 1,
      maximum_length = 10,
    })

    -- Gunakan bufferline di atas selalu
    vim.opt.showtabline = 2
  end,
}
