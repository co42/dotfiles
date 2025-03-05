return {
  {
    'saecki/crates.nvim',
    tag = 'stable',
    event = { 'BufRead Cargo.toml' },
    lazy = true,
    opts = {},
  },
}
