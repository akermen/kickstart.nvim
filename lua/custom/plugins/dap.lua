-- https://github.com/mfussenegger/nvim-dap
return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'nvim-neotest/nvim-nio',
    'theHamsta/nvim-dap-virtual-text',
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'
    local dapvt = require 'nvim-dap-virtual-text'

    dapvt.setup { commented = true }

    dapui.setup()

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

    local sign = vim.fn.sign_define
    sign('DapBreakpoint', { text = '●', texthl = '', linehl = '', numhl = '' })
    sign('DapBreakpointRejected', { text = '○', texthl = '', linehl = '', numhl = '' })
    sign('DapBreakpointCondition', { text = '◎', texthl = '', linehl = '', numhl = '' })
    sign('DapLogPoint', { text = '◆', texthl = '', linehl = '', numhl = '' })
    sign('DapStopped', { text = '', texthl = '', linehl = '', numhl = '' })
  end,
}
