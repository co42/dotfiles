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
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    opts = {
      textobjects = {
        -- Not working, may be due to lazyvim
        swap = {
          enable = true,
          swap_next = {
            ["<leader>a"] = "@parameter.inner",
          },
          swap_previous = {
            ["<leader>A"] = "@parameter.inner",
          },
        },
      },
    },
  },
}
