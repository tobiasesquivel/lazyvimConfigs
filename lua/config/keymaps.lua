-- Keymaps are automatically loaded on the VeryLazy event
-- Add any additional keymaps here
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

Terminal = require("snacks").terminal
Explorer = require("snacks").explorer
SnacksPickerExplorer = require("snacks.picker.actions")
Picker = require("snacks.picker")

local config = { silent = true }

-- Ir al archivo keymaps

local PathKeymaps = string.format("%s/AppData/local/nvim/lua/config/keymaps.lua", os.getenv("USERPROFILE"))
vim.keymap.set("n", "<leader>ck", string.format(":e %s <CR>", PathKeymaps), {
  desc = "Open Keymaps",
})

vim.keymap.set("i", "jk", "<Esc>", config)
vim.keymap.set("i", "kj", "<Esc>", config)

vim.keymap.set("n", "<M-h>", ":bprevious<CR>", config)
vim.keymap.set("n", "<M-l>", ":bnext<CR>", config)

vim.keymap.set({ "n", "v" }, "H", "<cmd>normal! 15kzz<CR>", { silent = true, buffer = nil })
vim.keymap.set({ "n", "v" }, "L", "<cmd>normal! 15jzz<CR>", { silent = true, buffer = nil })

-- Normal mode: tab y shift-tavim.keymap.set("n", "<Tab>", ">>", config) -- indentar línea actual
vim.keymap.set("n", "<S-Tab>", "<<", config) -- desindentar línea actual

-- Visual mode: tab y shift-tab para bloques
vim.keymap.set("v", "<Tab>", ">gv", config) -- >gv mantiene la selección
vim.keymap.set("v", "<S-Tab>", "<gv", config) -- <gv mantiene la selección
--
-- Terminal
--
vim.keymap.set("t", "jk", "<C-\\><C-n>")
vim.keymap.set("t", "kj", "<C-\\><C-n>")

-- TODO: Hacer funcionar la terminal con snacks y podes cambiarle el nombre a los archivos en el explorador

function AlternarTerminal()
  vim.opt.shellslash = false
  Terminal.toggle()
  vim.opt.shellslash = true
end

vim.keymap.set("n", "<C-t>", AlternarTerminal)

vim.keymap.set("n", "<M-d>", vim.diagnostic.open_float)
-- Map para abrir la consola en el direcotorio del buffer actual
-- vim.keymap.set("n", "<C-;>", function()
--   local Pwd = vim.fn.expand("%:p:h")
--   terminal.toggle(nil, {
--     cwd = Pwd,
--   })
-- end)

vim.keymap.set("t", "<C-t>", "<C-\\><C-n><cmd>hide<CR>")
