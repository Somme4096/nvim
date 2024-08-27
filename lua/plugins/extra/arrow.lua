return {
  "hungyiloo/arrow.nvim",
  opts = {
    show_icons = true,
  },
  cmd = "Arrow",
  keys = {
    {
      mode = "n",
      "<leader>t",
      function()
        require("arrow").open()
      end,
      desc = "Arrow",
      nowait = true,
    },
    {
      mode = "n",
      "<leader>m",
      function()
        require("arrow").open_bookmarks()
      end,
      desc = "Arrow Buffer Bookmarks",
      nowait = true,
    },
  },
}
