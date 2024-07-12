return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'https://github.com/nvim-neotest/nvim-nio'
  },
  config = function()
    local dap = require 'dap'

    local dapui = require 'dapui'

    require('dapui').setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set('n', '<leader>dc', dap.continue, {})
    vim.keymap.set('n', '<leader>do', dap.step_over, {})
    vim.keymap.set('n', '<leader>di', dap.step_into, {})
    vim.keymap.set('n', '<leader>du', dap.step_out, {})
    vim.keymap.set('n', '<leader>dt', dap.toggle_breakpoint, {})
    vim.keymap.set('n', '<leader>db', dap.set_breakpoint, {})
  end,
}
