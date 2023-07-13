-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local silent = { silent = true }
local keymap = vim.keymap.set

vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

-- Save with <C-s>
keymap("n", "<C-s>", ":w<CR>", silent)
keymap("i", "<C-s>", "<ESC> :w<CR>", silent)

-- Split windows
keymap("n", "<leader>v", "<C-W>s", { desc = "Split window below", remap = true })
keymap("n", "<leader>w", "<C-W>v", { desc = "Split window right", remap = true })

-- Buffers
keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", silent)
keymap("n", "gn", ":bn<CR>", silent)
keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", silent)
keymap("n", "gp", ":bp<CR>", silent)
keymap("n", "<S-q>", ":lua require('mini.bufremove').delete(0, false)<CR>", silent)
