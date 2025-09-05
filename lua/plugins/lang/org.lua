return {
  {
    "nvim-orgmode/orgmode",
    event = "VeryLazy",
    branch = "master",
    ft = { "org" },
    config = function()
      -- Setup orgmode
      require("orgmode").setup({
        org_agenda_files = "~/Documents/**/*",
        org_default_notes_file = "~/Documents/org/Inbox.org",
        org_startup_folded = "showeverything",
        org_startup_indented = false,
        org_todo_keywords = { "TODO", "DOING", "NEXT", "WAIT", "|", "DROP", "DONE" },
        org_capture_templates = {
          j = {
            description = "daily",
            template = "\n*** %<%Y-%m-%d> %<%A>\n**** %U\n\n%?",
            target = "~/Documents/org/Inbox.org",
          },
        },
      })

      -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
      -- add ~org~ to ignore_install
      -- require('nvim-treesitter.configs').setup({
      --   ensure_installed = 'all',
      --   ignore_install = { 'org' },
      -- })
    end,
  },
  {
    "akinsho/org-bullets.nvim",
    event = "VeryLazy",
    config = function()
      require("org-bullets").setup()
    end,
  },
}
