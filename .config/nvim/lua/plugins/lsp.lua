return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "codelldb", "rust-analyzer" })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            check = {
              command = "check",
            },
            rustfmt = {
              extraArgs = { "+nightly" },
            },
            -- https://github.com/LazyVim/LazyVim/discussions/5638
            procMacro = {
              ignored = {
                ["async-trait"] = vim.NIL,
              },
            },
          },
        },
      },
    },
  },
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<C-k>"] = { "select_prev" },
        ["<C-j>"] = { "select_next" },
        ["<C-l>"] = { "accept" },
      },
    },
  },
}
