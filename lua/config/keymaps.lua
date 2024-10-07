-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap(
  "n",
  "<leader>kc",
  '<cmd>silent! lua require("kubectl").toggle()<cr>',
  { noremap = true, silent = true, desc = "Toggle kubectl.nvim" }
)
keymap(
  "n",
  "<leader>ucc",
  ':exec &bg=="light"? "set bg=dark" : "set bg=light"<CR>',
  { desc = "Toggle background color" }
)
keymap(
  "n",
  "<leader>ks",
  '<cmd>silent! lua require("telescope._extensions.schema_companion_builtin").select_schema()<cr>',
  { silent = true, desc = "Select schema" }
)

keymap("n", "<leader>aa", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
keymap("v", "<leader>aa", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
keymap("n", "<leader>ac", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
keymap("v", "<leader>ac", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
