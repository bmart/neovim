" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>


nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"tab navigation
map tt :tabnew 
map <Leader><Right> <ESC>:tabn<CR>
map <Leader><Left> <ESC>:tabp<CR>

" quickly close quick fix window
nnoremap <leader>c :cclose<CR>

"save current buffer
nnoremap <leader>w :w<cr>
