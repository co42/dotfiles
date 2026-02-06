return {
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
      picker = {
        sources = {
          explorer = {
            --- Set layout to be a floating window like other pickers instead of a side panel
            layout = {
              cycle = true,
              preset = function()
                return vim.o.columns >= 120 and "default" or "vertical"
              end,
            },
            auto_close = true, -- automatically close the picker when focusing another window
          },
        },
      },
    },
  },
}
