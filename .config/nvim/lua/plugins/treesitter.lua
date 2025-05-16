return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      -- Quickly increment of decrement selection in visual mode
      incremental_selection = {
        enable = true,
        keymaps = {
          node_incremental = "v",
          node_decremental = "V",
        },
      },
    },
  },
}
