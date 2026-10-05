local map = vim.keymap.set

-- Move selected lines
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("v", "<C-y>", '"*y<Esc>')

-- No arrow keys --- force yourself to use the home row
for _, key in ipairs({ "<up>", "<down>" }) do
  map({ "n", "i" }, key, "<nop>")
end
map("i", "<left>", "<nop>")
map("i", "<right>", "<nop>")
map("i", "<C-c>", "<Esc>")

-- Left and right can switch buffers
map("n", "<left>", ":bp<CR>")
map("n", "<right>", ":bn<CR>")

-- Very magic by default
map("n", "?", "?\\v")
map("n", "/", "/\\v")
map("c", "%s/", "%sm/")

-- Open new file adjacent to current file
map("n", "<leader>o", ':e <C-R>=expand("%:p:h") . "/" <CR>')

-- <leader><leader> toggles between buffers
map("n", "<leader><leader>", "<C-^>")
