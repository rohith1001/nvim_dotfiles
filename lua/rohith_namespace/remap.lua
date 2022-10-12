local nnoremap = require("rohith_namespace.keymap").nnoremap
local vnoremap = require("rohith_namespace.keymap").vnoremap

nnoremap("<leader>h", ":wincmd h<CR>")
nnoremap("<leader>j", ":wincmd j<Cr>")
nnoremap("<leader>k", ":wincmd k<Cr>")
nnoremap("<leader>l", ":wincmd l<Cr>")

-- Copy to clipboard
vnoremap("<leader>y", "\"*y")
nnoremap("<leader>Y", "\"*yy")
nnoremap("<leader>y", "\"*y")
nnoremap("<leader>yy","\"*yy")

-- Paste from clipboard
nnoremap("<leader>p", "*p")
nnoremap("<leader>P", "*P")
vnoremap("<leader>p", "*p")
vnoremap("<leader>P", "*P")

nnoremap("<C-p>", ":Telescope find_files<Cr>")
nnoremap("<leader>ex",":Ex<Cr>")

nnoremap ("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap ("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap ("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap ("<leader>fh", "<cmd>Telescope help_tags<cr>")
