-- use GFiles instead of files to exclude anything in .gitignore
vim.keymap.set("n", "<Leader>f",":GFiles<CR>")
vim.keymap.set("n", "<Leader>ff",":Files<CR>")
vim.keymap.set("n", "<Leader>b" ,":Buffers<CR>")
-- tags (symbols) in current file finder mapping
vim.keymap.set("n", "<Leader>g",":BTag<CR>")
-- tags (symbols) in all files finder mapping
vim.keymap.set("n", "<Leader>G",":Tags<CR>")
-- general code finder in all files mapping
vim.keymap.set("n", "<Leader>F",":Lines<CR>") 
-- commands finder mapping
vim.keymap.set("n", "<Leader>c",":Commands<CR>") 


vim.keymap.set("n", "<Leader>s",":Rg<CR>") 
