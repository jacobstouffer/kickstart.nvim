return {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
    },
    config = function()
        vim.keymap.set('n', '<leader>1', ':Neotree filesystem reveal left toggle<CR>')
        -- defaults
        -- s open file with split
        -- / fuzzy search
        -- a new file
        -- A new directory
        -- . change root (resets when you quit neovim)
    end,
}
