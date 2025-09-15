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
        org_default_notes_file = "~/Documents/org/daily.org",
        -- org_startup_folded = "showeverything",
        org_startup_indented = false,
        org_todo_keywords = {
          "TODO",
          "DOING",
          "IDEA",
          "WAIT",
          "ACTIVE",
          "MEETING",
          "|",
          "DONE",
          "SUSPEND",
          "CANCELLED",
        },
        org_todo_keyword_faces = {
          NEXT = ":foreground #cce6ff",
          TODO = ":weight bold :foreground #ff3333",
          DOING = ":slant italic :foreground #7f6df2",
        },
        org_capture_templates = {
          j = {
            description = "daily",
            template = "\n* %<%Y-%m-%d> %<%A>\n**** %U\n\n** Work log%?",
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
