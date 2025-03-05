-- Help manage crates.io dependencies
-- https://github.com/saecki/crates.nvim
return {
  'saecki/crates.nvim',
  tag = 'stable',
  event = { 'BufRead Cargo.toml' },
  opts = {},
}
