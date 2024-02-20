vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.relativenumber = true
--vim.opt.noautoindent
vim.g.mapleader = " "
vim.opt.timeoutlen = 300 -- Set timeout length to 500 ms
vim.opt.nu = true


-- split settings / note control-w c to close a split / also to resize  :resize
vim.opt.splitbelow = false

-- remove ugly vertical lines on window division
-- vim.opt.fillchars+="vert:\"

-- needed so deoplete can auto select the first suggestion
-- vim.opt.completeopt+="noinsert"

-- (displays documentation related to the selected completion option)
-- vim.opt.completeopt-=preview

-- autocompletion of files and commands behaves like shell
-- vim.opt.wildmode=list:longest

-- when scrolling, keep cursor 3 lines away from screen border
-- vim.opt.scrolloff = 3

-- clear empty spaces at the end of lines on save of python files
-- autocmd BufWritePre *.py :%s/\s\+$//e

-- fix problems with uncommon shells (fish, xonsh) and plugins running commands
vim.opt.shell="/bin/zsh"

-- Typescript
-- au BufNewFile,BufRead *.ts setlocal filetype=typescript
-- au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

-- JSON
-- au BufNewFile,BufRead,BufReadPost *.ejson setf json


-- Git
vim.keymap.set("n", "<c-g>f", ":2,$ s/^pick/f<CR>")
vim.keymap.set("n", "<c-g>s", ":2,$ s/^pick/f<CR>")
