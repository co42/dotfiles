-- Highlight todo, notes, etc in comments
-- https://github.com/folke/todo-comments.nvim
return {
  'folke/todo-comments.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    signs = false,
  },
}
