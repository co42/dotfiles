-- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
-- https://github.com/folke/lazydev.nvim
return {
  'folke/lazydev.nvim',
  version = '*',
  ft = 'lua',
  opts = {
    library = {
      -- Load luvit types when the `vim.uv` word is found
      { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
    },
  },
}
