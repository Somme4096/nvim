-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- LazyVim Extra Settings
--
vim.g.lazyvim_picker = "telescope"

vim.opt.shellslash = true

-- Disable relative line number
vim.opt.relativenumber = false
-- italics
vim.api.nvim_set_hl(0, "Comment", { italic = true })
-- Basic Settings
vim.opt_local.cursorcolumn = true -- Highlight the current column
vim.opt_local.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indent
vim.opt_local.softtabstop = 2 -- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt_local.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for
vim.opt_local.expandtab = true -- Expand tab to 2 spaces
vim.opt_global.fileencoding = "utf-8"
vim.opt.mouse = ""
vim.g.gruvbox_material_background = "hard"

for _, quote in ipairs({ '"', "'", "`" }) do
  vim.keymap.set({ "x", "o" }, "a" .. quote, "2i" .. quote)
end

if vim.g.neovide then
  vim.o.guifont = "RobotoMono Nerd Font,Noto Sans JP:h9" -- text below applies for VimScript
  vim.opt.linespace = 2
  vim.g.neovide_padding_top = 7
  vim.g.neovide_padding_bottom = 5
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0
  -- Titlebar color (Currently windows only)
  vim.g.neovide_title_background_color =
    string.format("%x", vim.api.nvim_get_hl(0, { id = vim.api.nvim_get_hl_id_by_name("Normal") }).bg)
  vim.g.neovide_title_text_color = "pink"
end
