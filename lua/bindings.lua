-- basic keybindings

-- Make adjusing split sizes a bit more friendly
vim.keymap.set("n","<silent> <C-Left>",":vertical resize +3<CR>")
vim.keymap.set("n","<silent> <C-Right>",":vertical resize -3<CR>")
vim.keymap.set("n","<silent> <C-Up>",":resize +3<CR>")
vim.keymap.set("n","<silent> <C-Down>",":resize -3<CR>")

vim.keymap.set("n","<C-J>","<C-W><C-J>")
vim.keymap.set("n","<C-K>","<C-W><C-K>")
vim.keymap.set("n","<C-L>","<C-W><C-L>")
vim.keymap.set("n","<C-H>","<C-W><C-H>")

-- Tab navigation
vim.keymap.set("n","tt",":tabnew")
vim.keymap.set("n","<Leader><Right>","<ESC>:tabn<CR>")
vim.keymap.set("n","<Leader><Left>","<ESC>:tabp<CR>")

-- Quickly close quick fix window
vim.keymap.set("n","<leader>c",":cclose<CR>")

--Save current buffer
vim.keymap.set("n","<leader>w",":w<cr>")
