return {
  {
    "folke/edgy.nvim",
    enabled = false,
    event = "VeryLazy",
    -- keys = {
    --   {
    --     "<leader>ue",
    --     function()
    --       require("edgy").toggle()
    --     end,
    --     desc = "Edgy Toggle",
    --   },
    -- },
    -- init = function()
    --   vim.opt.laststatus = 3
    --   vim.opt.splitkeep = "screen"
    -- end,
    opts = {
      wo = {
        -- Setting to `true`, will add an edgy winbar.
        -- Setting to `false`, won't set any winbar.
        -- Setting to a string, will set the winbar to that string.
        winbar = false,
        winfixwidth = true,
        winfixheight = false,
        winhighlight = "WinBar:EdgyWinBar,Normal:EdgyNormal",
        spell = false,
        signcolumn = "no",
      },
      options = {
        left = { size = 35 },
        -- bottom = { size = 10 },
        -- right = { size = 30 },
        -- top = { size = 10 },
      },
      left = {
        -- Neo-tree filesystem always takes half the screen height
        {
          title = "Neo-Tree",
          ft = "neo-tree",
          filter = function(buf)
            return vim.b[buf].neo_tree_source == "filesystem"
          end,
          size = { height = 0.6 },
        },
        {
          title = "Neo-Tree Git",
          ft = "neo-tree",
          filter = function(buf)
            return vim.b[buf].neo_tree_source == "git_status"
          end,
          pinned = true,
          collapsed = false, -- show window as closed/collapsed on start
          open = "Neotree position=right git_status",
        },
        {
          title = "Neo-Tree Buffers",
          ft = "neo-tree",
          filter = function(buf)
            return vim.b[buf].neo_tree_source == "buffers"
          end,
          pinned = true,
          collapsed = false, -- show window as closed/collapsed on start
          open = "Neotree position=top buffers",
        },
        -- {
        --   title = function()
        --     local buf_name = vim.api.nvim_buf_get_name(0) or "[No Name]"
        --     return vim.fn.fnamemodify(buf_name, ":t")
        --   end,
        --   ft = "Outline",
        --   pinned = true,
        --   open = "SymbolsOutlineOpen",
        -- },
        -- any other neo-tree windows
        "neo-tree",
      },
    },
  },
}
