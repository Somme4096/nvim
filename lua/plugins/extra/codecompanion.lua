return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "hrsh7th/nvim-cmp", -- Optional: For using slash commands and variables in the chat buffer
      "nvim-telescope/telescope.nvim", -- Optional: For using slash commands
      { "stevearc/dressing.nvim", opts = {} }, -- Optional: Improves the default Neovim UI
    },
    config = true,
    opts = function()
      require("codecompanion").setup({
        -- anthropic = function()
        --   return require("codecompanion.adapters").extend("copilot", {
        --     env = {
        --       -- api_key = "MY_OTHER_ANTHROPIC_KEY"
        --     },
        --   })
        -- end,
        strategies = {
          chat = {
            adapter = "copilot",
          },
          inline = {
            adapter = "copilot",
          },
          agent = {
            adapter = "copilot",
          },
        },
      })
    end,
  },
}
