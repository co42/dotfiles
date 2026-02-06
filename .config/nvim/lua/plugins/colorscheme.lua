return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "auto",
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        mason = true,
        mini = true,
        native_lsp = { enabled = true },
        noice = true,
        notify = true,
        telescope = true,
        treesitter = true,
        which_key = true,
      },
    },
  },
}
