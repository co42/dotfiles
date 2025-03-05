-- Persistence is a simple lua plugin for automated session management
-- https://github.com/folke/persistence.nvim
return {
  'folke/persistence.nvim',
  version = '*',
  event = 'BufReadPre',
  opts = {
    dir = vim.fn.stdpath 'state' .. '/sessions/', -- Directory where session files are saved
    -- Minimum number of file buffers that need to be open to save
    -- Set to 0 to always save
    need = 1,
    branch = true, -- Use git branch to save session
  },
}
