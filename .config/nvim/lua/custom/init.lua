-- Please check NvChad docs if you're totally new to nvchad + dont know lua!!
-- This is an example init file in /lua/custom/
-- this init.lua can load stuffs etc too so treat it like your ~/.config/nvim/

-- MAPPINGS
local map = require("core.utils").map

map("i", "jk", "<ESC>")
-- map("n", "<leader>q", ":q <CR>")

-- NOTE: the 4th argument in the map function is be a table i.e options but its most likely un-needed so dont worry about it
local opt = vim.opt
opt.linebreak = true
opt.timeoutlen = 250

vim.g.transparent_enabled = true
