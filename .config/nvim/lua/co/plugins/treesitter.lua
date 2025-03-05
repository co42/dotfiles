-- Highlight, edit, and navigate code
-- https://github.com/nvim-treesitter/nvim-treesitter
-- See `:help nvim-treesitter`
return {
  'nvim-treesitter/nvim-treesitter',
  event = { 'BufReadPre' },
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs', -- Sets main module to use for opts
  opts = {
    ensure_installed = {
      'bash',
      'diff',
      'html',
      'lua',
      'luadoc',
      'markdown',
      'markdown_inline',
      'query',
      'rust',
      'vim',
      'vimdoc',
    },
    auto_install = true,

    -- Quickly increment of decrement selection in visual mode
    incremental_selection = {
      enable = true,
      keymaps = {
        node_incremental = 'v',
        node_decremental = 'V',
      },
    },
  },
}
