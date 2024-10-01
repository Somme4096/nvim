return {
  {
    "rktjmp/lush.nvim",
  },
  {
    "mcchrish/zenbones.nvim",
    lazy = true,
    dependencies = {
      "rktjmp/lush.nvim",
    },
  },
  {
    "rmehri01/onenord.nvim",
    lazy = true,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    config = function()
      require("rose-pine").setup({
        highlight_groups = {
          TelescopeBorder = { fg = "overlay", bg = "overlay" },
          TelescopeNormal = { fg = "subtle", bg = "overlay" },
          TelescopeSelection = { fg = "text", bg = "highlight_med" },
          TelescopeSelectionCaret = { fg = "love", bg = "highlight_med" },
          TelescopeMultiSelection = { fg = "text", bg = "highlight_high" },

          TelescopeTitle = { fg = "base", bg = "love" },
          TelescopePromptTitle = { fg = "base", bg = "pine" },
          TelescopePreviewTitle = { fg = "base", bg = "iris" },

          TelescopePromptNormal = { fg = "text", bg = "surface" },
          TelescopePromptBorder = { fg = "surface", bg = "surface" },
        },
      })
    end,
  },
  {
    "sainnhe/gruvbox-material",
    lazy = true,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
    end,
  },
  {
    "horanmustaplot/xcarbon.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    config = function() end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    config = function()
      require("tokyonight").setup({
        style = "storm",
        on_highlights = function(hl, c)
          local prompt = "#2d3149"
          hl.TelescopeNormal = {
            bg = c.bg_dark,
            fg = c.fg_dark,
          }
          hl.TelescopeBorder = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
          hl.TelescopePromptNormal = {
            bg = prompt,
          }
          hl.TelescopePromptBorder = {
            bg = prompt,
            fg = prompt,
          }
          hl.TelescopePromptTitle = {
            bg = prompt,
            fg = prompt,
          }
          hl.TelescopePreviewTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
          hl.TelescopeResultsTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
        end,
      })
    end,
  },
  {
    "catppuccin/nvim",
    lazy = true,
    config = function()
      require("catppuccin").setup({
        integrations = {
          telescope = {
            enabled = true,
            style = "nvchad",
          },
        },
      })
    end,
  },
  {
    "e-q/okcolors.nvim",
    name = "okcolors",
    lazy = true,
    config = function()
      require("okcolors").setup({
        variant = "smooth", -- "smooth" or "sharp", defaults to "smooth"
      })
    end,
  },
  -- {
  --   "ramojus/mellifluous.nvim",
  --   lazy = false,
  --   opts = {
  --     color_set = "kanagawa_dragon",
  --   },
  -- },
  -- {
  --   "rebelot/kanagawa.nvim",
  --   lazy = true,
  --   config = function()
  --     return {
  --       require("kanagawa").setup({
  --         colors = {
  --           theme = {
  --             all = {
  --               ui = {
  --                 bg_gutter = "none",
  --               },
  --             },
  --           },
  --         },
  --         overrides = function(colors)
  --           local theme = colors.theme
  --           return {
  --             TelescopeTitle = { fg = theme.ui.special, bold = true },
  --             TelescopePromptNormal = { bg = theme.ui.bg_p1 },
  --             TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
  --             TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
  --             TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
  --             TelescopePreviewNormal = { bg = theme.ui.bg_dim },
  --             TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
  --             Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
  --             PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
  --             PmenuSbar = { bg = theme.ui.bg_m1 },
  --             PmenuThumb = { bg = theme.ui.bg_p2 },
  --           }
  --         end,
  --         commentStyle = { italic = true },
  --         functionStyle = {},
  --         keywordStyle = { italic = true },
  --         statementStyle = { bold = true },
  --       }),
  --     }
  --   end,
  -- },
  -- {
  --   "olimorris/onedarkpro.nvim",
  --   priority = 1000, -- Ensure it loads first
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyobones",
    },
  },
}
