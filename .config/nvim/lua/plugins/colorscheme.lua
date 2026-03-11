return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
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

  {
    "cormacrelf/dark-notify",
    lazy = false,
    priority = 900,
    config = function()
      require("dark_notify").run({
        schemes = {
          light = { colorscheme = "catppuccin-latte" },
          dark = { colorscheme = "catppuccin-mocha" },
        },
      })
    end,
  },
}
