-- https://github.com/mfussenegger/nvim-dap-python
return {
  'mfussenegger/nvim-dap-python',
  dependencies = {
    'mfussenegger/nvim-dap',
  },
  config = function()
    -- NOTE:install `debugpy` for each project
    -- python3 -m venv venv && ./venv/bin/pip install debugpy

    local cwd = vim.fn.getcwd()
    local python_path = ''
    if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
      python_path = cwd .. '/venv/bin/python'
    elseif vim.fn.executable(cwd .. '/venv3/bin/python') == 1 then
      python_path = cwd .. '/venv3/bin/python'
    elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
      python_path = cwd .. '/.venv/bin/python'
    elseif vim.fn.executable(cwd .. '/.venv3/bin/python') == 1 then
      python_path = cwd .. '/.venv3/bin/python'
    elseif vim.fn.executable(cwd .. '/virtualenv/bin/python') == 1 then
      python_path = cwd .. '/virtualenv/bin/python'
    elseif vim.fn.executable(cwd .. '/virtualenv3/bin/python') == 1 then
      python_path = cwd .. '/virtualenv3/bin/python'
    elseif vim.fn.executable(cwd .. '/.virtualenv/bin/python') == 1 then
      python_path = cwd .. '/.virtualenv/bin/python'
    elseif vim.fn.executable(cwd .. '/.virtualenv3/bin/python') == 1 then
      python_path = cwd .. '/.virtualenv3/bin/python'
    elseif vim.fn.executable(cwd .. '/env/bin/python') == 1 then
      python_path = cwd .. '/env/bin/python'
    elseif vim.fn.executable(cwd .. '/env3/bin/python') == 1 then
      python_path = cwd .. '/env3/bin/python'
    elseif vim.fn.executable(cwd .. '/.env/bin/python') == 1 then
      python_path = cwd .. '/.env/bin/python'
    elseif vim.fn.executable(cwd .. '/.env3/bin/python') == 1 then
      python_path = cwd .. '/.env3/bin/python'
    else
      python_path = 'python3'
    end

    local dap = require 'dap'
    require('dap-python').setup(python_path)

    local uv = vim.uv or vim.loop

    -- filter django projects
    if uv.fs_stat(cwd .. '/manage.py') then
      -- search the first 'settings' subfolder and use the parent folder as the base module
      for _, file_path in pairs(vim.split(vim.fn.glob(cwd .. '/*/settings/*.py'), '\n', { trimempty = true })) do
        local path_base = vim.fs.basename(vim.fs.dirname(file_path))
        local path_root = vim.fs.basename(vim.fs.dirname(vim.fs.dirname(file_path)))
        local file_name = vim.fs.basename(file_path)
        local _, file, _ = string.match(file_name, '^(.-)([^\\/]-)(%.[^\\/%.]-)%.?$')

        if file ~= '__init__' then
          local settings = path_root .. '.' .. path_base .. '.' .. file

          table.insert(dap.configurations.python, {
            type = 'python',
            request = 'launch',
            name = 'django - ' .. settings,
            program = cwd .. '/manage.py',
            args = {
              'runserver',
              '--noreload',
              '--nothreading',
              '--settings=' .. settings,
            },
          })
        end
      end

      -- search the first 'settings.py' file under a subfolder and use the parent folder as the base module
      for _, file_path in pairs(vim.split(vim.fn.glob(cwd .. '/*/settings.py'), '\n', { trimempty = true })) do
        local path_base = vim.fs.basename(vim.fs.dirname(file_path))
        local file_name = vim.fs.basename(file_path)
        local _, file, _ = string.match(file_name, '^(.-)([^\\/]-)(%.[^\\/%.]-)%.?$')

        if file ~= '__init__' then
          local settings = path_base .. '.' .. file

          table.insert(dap.configurations.python, {
            type = 'python',
            request = 'launch',
            name = 'django - ' .. settings,
            program = cwd .. '/manage.py',
            args = {
              'runserver',
              '--noreload',
              '--nothreading',
              '--settings=' .. settings,
            },
          })
        end
      end
    end
  end,
}
