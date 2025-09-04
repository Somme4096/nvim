return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    init = function()
      vim.g.lualine_laststatus = vim.o.laststatus
      if vim.fn.argc(-1) > 0 then
        -- set an empty statusline till lualine loads
        vim.o.statusline = " "
      else
        -- hide the statusline on the starter page
        vim.o.laststatus = 0
      end
    end,
    opts = function()
      -- PERF: we don't need this lualine require madness 🤷
      local lualine_require = require("lualine_require")
      lualine_require.require = require

      local icons = LazyVim.config.icons
      local function modified()
        if vim.bo.modified then
          return "[+]"
        elseif vim.bo.modifiable == false or vim.bo.readonly == true then
          return "[-]"
        end
        return ""
      end

      local function search_result()
        if vim.v.hlsearch == 0 then
          return ""
        end
        local last_search = vim.fn.getreg("/")
        if not last_search or last_search == "" then
          return ""
        end
        local searchcount = vim.fn.searchcount({ maxcount = 9999 })
        return last_search .. "(" .. searchcount.current .. "/" .. searchcount.total .. ")"
      end
      vim.o.laststatus = vim.g.lualine_laststatus

      local opts = {
        options = {
          theme = "auto",
          component_separators = { left = "", right = "" },
          section_separators = { left = "", right = "" },
        },
        sections = {
          lualine_a = {
            function()
              return "󱡓"
            end,
            { "mode" },
            {
              "buffers",
              show_filename_only = true,
              symbols = {
                modified = " ●",
                alternate_file = "",
                directory = "",
              },
              mode = 2,
              -- Automatically updates active buffer color to match color of other components (will be overidden if buffers_color is set)
              use_mode_colors = false,
              buffers_color = {
                -- Same values as the general color option can be used here.
                active = "lualine_a_normal", -- Color for active buffer.
                inactive = "lualine_b_normal", -- Color for inactive buffer.
              },
            },
          },
          lualine_b = {
            {
              "branch",
              icon = "󰘬",
            },
            LazyVim.lualine.root_dir(),
            function()
              return require("arrow.statusline").text_for_statusline_with_icons()
            end,
          },

          lualine_c = {
            -- { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
            -- { LazyVim.lualine.pretty_path() },
            {
              "diagnostics",
              symbols = {
                error = icons.diagnostics.Error,
                warn = icons.diagnostics.Warn,
                info = icons.diagnostics.Info,
                hint = icons.diagnostics.Hint,
              },
            },
            {
              "%w",
              cond = function()
                return vim.wo.previewwindow
              end,
            },
            {
              "%r",
              cond = function()
                return vim.bo.readonly
              end,
            },
            {
              "%q",
              cond = function()
                return vim.bo.buftype == "quickfix"
              end,
            },
          },
          lualine_x = {
            {
              function()
                local starts = vim.fn.line("v")
                local ends = vim.fn.line(".")
                local count = starts <= ends and ends - starts + 2 or starts - ends + 1
                local wc = vim.fn.wordcount()
                return "󰦨 " .. count .. " 󰊄 " .. wc["visual_chars"]
              end,
              cond = function()
                return vim.fn.mode():find("[Vv]") ~= nil
              end,
            },
            search_result,
          -- stylua: ignore
          {
            function() return "  " .. require("dap").status() end,
            cond = function() return package.loaded["dap"] and require("dap").status() ~= "" end,
            color = function() return {fg = Snacks.util.color("debug") } end,
          },
            {
              "diff",
              symbols = {
                added = icons.git.added,
                modified = icons.git.modified,
                removed = icons.git.removed,
              },
              source = function()
                local gitsigns = vim.b.gitsigns_status_dict
                if gitsigns then
                  return {
                    added = gitsigns.added,
                    modified = gitsigns.changed,
                    removed = gitsigns.removed,
                  }
                end
              end,
            },
          },
          lualine_y = {

            {
              "filetype",
            },
            "encoding",
            "filesize",
          },
          lualine_z = {
            -- function()
            --   return "󰦪"
            -- end,
            -- "progress",
            function()
              return "󰉸"
            end,
            "location",
          },
        },
        inactive_sections = {
          lualine_c = { "%f %y %m" },
          -- lualine_x = {},
        },
      }
      -- do not add trouble symbols if aerial is enabled
      -- And allow it to be overriden for some buffer types (see autocmds)
      if vim.g.trouble_lualine and LazyVim.has("trouble.nvim") then
        local trouble = require("trouble")
        local symbols = trouble.statusline({
          mode = "symbols",
          groups = {},
          title = false,
          filter = { range = true },
          format = "{kind_icon}{symbol.name:Normal}",
          hl_group = "lualine_c_normal",
        })
        table.insert(opts.sections.lualine_c, {
          symbols and symbols.get,
          cond = function()
            return vim.b.trouble_lualine ~= false and symbols.has()
          end,
        })
      end

      return opts
    end,
  },
}
