return {
  -- Persistence is a simple lua plugin for automated session management
  -- https://github.com/folke/persistence.nvim
  {
    'folke/persistence.nvim',
    event = 'BufReadPre', -- This will only start session saving when an actual file was opened
    opts = {
      dir = vim.fn.stdpath 'state' .. '/sessions/', -- Directory where session files are saved
      -- Minimum number of file buffers that need to be open to save
      -- Set to 0 to always save
      need = 1,
      branch = true, -- Use git branch to save session
    },
  },
}
