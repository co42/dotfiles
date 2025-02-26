return {
  {
    'folke/snacks.nvim',
    tag = 'v2.20.0',
    lazy = false,
    priority = 1000,
    ---@type snacks.Config
    opts = {
      explorer = {},
      picker = {
        matcher = {
          frecency = true,
        },
      },
      -- https://github.com/folke/snacks.nvim/blob/main/docs/scratch.md#%EF%B8%8F-config
      scratch = {
        autowrite = true, -- automatically write when the buffer is hidden
        filekey = {
          cwd = true, -- use current working directory
          branch = false, -- use current branch name
          count = false, -- use vim.v.count1
        },
        ft = 'markdown',
        root = vim.fn.stdpath 'data' .. '/scratch',
      },
    },
    keys = {
      -- Files
      {
        '<leader>sf',
        function()
          Snacks.picker.smart()
        end,
        desc = '[s]earch [f]iles',
      },
      {
        '<leader>sg',
        function()
          Snacks.picker.grep()
        end,
        desc = '[s]earch [g]rep',
      },
      {
        '<leader>sc',
        function()
          ---@diagnostic disable-next-line: assign-type-mismatch
          Snacks.picker.files { cwd = vim.fn.stdpath 'config' }
        end,
        desc = '[s]earch [c]onfig',
      },
      {
        '<leader>te',
        function()
          Snacks.explorer()
        end,
        desc = '[t]oggle [e]xplorer',
      },
      -- registers
      {
        '<leader>sr',
        function()
          Snacks.picker.registers()
        end,
        desc = '[s]earch [r]egister',
      },
      -- scratch
      {
        '<leader>sb',
        function()
          Snacks.scratch.select()
        end,
        desc = '[s]cratch [b]uffer',
      },
      {
        '<leader>ob',
        function()
          Snacks.scratch.open()
        end,
        desc = '[o]pen [b]uffer',
      },
      -- git
      {
        '<leader>gb',
        function()
          Snacks.picker.git_branches()
        end,
        desc = '[g]it [b]ranches',
      },
      {
        '<leader>gl',
        function()
          Snacks.picker.git_log()
        end,
        desc = '[g]it [l]og',
      },
      {
        '<leader>gL',
        function()
          Snacks.picker.git_log_line()
        end,
        desc = '[g]it [L]og line',
      },
      {
        '<leader>gd',
        function()
          Snacks.picker.git_diff()
        end,
        desc = '[g]it [d]iff (Hunks)',
      },
      {
        '<leader>gs',
        function()
          Snacks.picker.git_status()
        end,
        desc = '[g]it [s]tatus',
      },
      {
        '<leader>gS',
        function()
          Snacks.picker.git_stash()
        end,
        desc = '[g]it [S]tash',
      },
      -- LSP
      {
        'gd',
        function()
          Snacks.picker.lsp_definitions()
        end,
        desc = '[g]oto [d]efinition',
      },
      {
        'gD',
        function()
          Snacks.picker.lsp_declarations()
        end,
        desc = '[g]oto [D]eclaration',
      },
      {
        'gr',
        function()
          Snacks.picker.lsp_references()
        end,
        nowait = true,
        desc = '[g]oto [r]eferences',
      },
      {
        'gI',
        function()
          Snacks.picker.lsp_implementations()
        end,
        desc = '[g]oto [I]mplementation',
      },
      {
        'gy',
        function()
          Snacks.picker.lsp_type_definitions()
        end,
        desc = '[g]oto t[y]pe definition',
      },
      {
        'gs',
        function()
          Snacks.picker.lsp_symbols()
        end,
        desc = '[g]oto document [s]ymbols',
      },
      {
        'gS',
        function()
          Snacks.picker.lsp_workspace_symbols()
        end,
        desc = '[g]oto workspace [S]ymbols',
      },
      --  -- Top Pickers & Explorer
      --  { "<leader>,", function() Snacks.picker.buffers() end, desc = "Buffers" },
      --  { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
      --  { "<leader>n", function() Snacks.picker.notifications() end, desc = "Notification History" },
      --  -- find
      --  { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
      --  { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
      --  { "<leader>fg", function() Snacks.picker.git_files() end, desc = "Find Git Files" },
      --  { "<leader>fp", function() Snacks.picker.projects() end, desc = "Projects" },
      --  { "<leader>fr", function() Snacks.picker.recent() end, desc = "Recent" },
      --  -- Grep
      --  { "<leader>sb", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
      --  { "<leader>sB", function() Snacks.picker.grep_buffers() end, desc = "Grep Open Buffers" },
      --  { "<leader>sw", function() Snacks.picker.grep_word() end, desc = "Visual selection or word", mode = { "n", "x" } },
      --  -- search
      --  { '<leader>s"', function() Snacks.picker.registers() end, desc = "Registers" },
      --  { '<leader>s/', function() Snacks.picker.search_history() end, desc = "Search History" },
      --  { "<leader>sa", function() Snacks.picker.autocmds() end, desc = "Autocmds" },
      --  { "<leader>sb", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
      --  { "<leader>sc", function() Snacks.picker.command_history() end, desc = "Command History" },
      --  { "<leader>sC", function() Snacks.picker.commands() end, desc = "Commands" },
      --  { "<leader>sd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
      --  { "<leader>sD", function() Snacks.picker.diagnostics_buffer() end, desc = "Buffer Diagnostics" },
      --  { "<leader>sh", function() Snacks.picker.help() end, desc = "Help Pages" },
      --  { "<leader>sH", function() Snacks.picker.highlights() end, desc = "Highlights" },
      --  { "<leader>si", function() Snacks.picker.icons() end, desc = "Icons" },
      --  { "<leader>sj", function() Snacks.picker.jumps() end, desc = "Jumps" },
      --  { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
      --  { "<leader>sl", function() Snacks.picker.loclist() end, desc = "Location List" },
      --  { "<leader>sm", function() Snacks.picker.marks() end, desc = "Marks" },
      --  { "<leader>sM", function() Snacks.picker.man() end, desc = "Man Pages" },
      --  { "<leader>sp", function() Snacks.picker.lazy() end, desc = "Search for Plugin Spec" },
      --  { "<leader>sq", function() Snacks.picker.qflist() end, desc = "Quickfix List" },
      --  { "<leader>sR", function() Snacks.picker.resume() end, desc = "Resume" },
      --  { "<leader>su", function() Snacks.picker.undo() end, desc = "Undo History" },
      --  { "<leader>uC", function() Snacks.picker.colorschemes() end, desc = "Colorschemes" },
    },
  },
}
