-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Turn off paste mode when leaving Insert mode.
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Fix conceallevel of json files.
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc" },
  callback = function()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end,
})

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Set your default directory
    local default_dir = vim.fn.expand("~/Documents/org/") -- Change this path

    -- Change to the directory
    vim.cmd("cd " .. default_dir)

    -- Load and open Neo-tree
    require("lazy").load({ plugins = { "neo-tree.nvim" } })
    vim.cmd("Neotree show")
  end,
})
