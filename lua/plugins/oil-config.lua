return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { 'echasnovski/mini.icons' },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  config = function()
    vim.keymap.set('n', '-', ':Oil<CR>', {})
  end
}
