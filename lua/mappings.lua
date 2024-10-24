require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Keyboard users
map("n", "<C-t>", function()
  require("menu").open("default")
end, {})

-- mouse users + nvimtree users!
map("n", "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'

  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, { mouse = true })
end, {})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Oil
map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Moving elements around
map("v", "K", ":m '<-2<CR>gv=gv")
map("v", "J", ":m '>+1<CR>gv=gv")

-- Center buffer while navigating
map("n", "J", "mzJ`z")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "{", "{zz")
map("n", "}", "}zz")
-- map("n", "G", "Gzz")
-- map("n", "gg", "ggzz")
map("n", "%", "%zz")
map("n", "*", "*zz")
map("n", "#", "#zz")
-- map("n", "<C-o>", "<C-o>zz", { noremap = true, silent = true })
map("n", "<C-m>", "<C-i>", { noremap = true, silent = true })
-- map('n', '<Tab>', '<C-i>zz')
-- map('n', '<S-Tab>', '<C-o>zz')
-- map('n', '<C-k>', '<cmd>cnext<CR>zz')
-- map('n', '<C-j>', '<cmd>cprev<CR>zz')
-- map('n', '<leader>k', '<cmd>lnext<CR>zz')
-- map('n', '<leader>j', '<cmd>lprev<CR>zz')

-- greatest remap ever
map("x", "<leader>p", [["_dP]], { desc = "Past without losing yank", remap = true })

-- next greatest remap ever
map({ "n", "v" }, "<leader>y", [["+y]], { desc = "yank to clipboard", remap = true })
map("n", "<leader>Y", [["+Y]], { desc = "yank to clipboard", remap = true })

-- map({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Delete into the void register', remap = true })

-- Undotree
map("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle undotree", remap = true })

-- Renaming with ThePrimeagen's way
map(
  "n",
  "<leader>rp",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "ThePrimeagen replace", remap = true }
)

-- gitsings
map("n", "]c", "<CMD>Gitsigns next_hunk<CR>", {desc = "Jump to next git hunk"})
map("n", "[c", "<CMD>Gitsigns prev_hunk<CR>", {desc = "Jump to next git hunk"})
