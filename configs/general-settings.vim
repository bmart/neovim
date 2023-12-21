set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set relativenumber
"set noautoindent
let mapleader="\<Space>"
"let mapleader=","
set timeoutlen=300 " Set timeout length to 500 ms
set nu


" split settings / note control-w c to close a split / also to resize  :resize
set splitbelow splitright

" remove ugly vertical lines on window division
set fillchars+=vert:\ 

" needed so deoplete can auto select the first suggestion
set completeopt+=noinsert

" (displays documentation related to the selected completion option)
set completeopt-=preview

" autocompletion of files and commands behaves like shell
set wildmode=list:longest

" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

" clear empty spaces at the end of lines on save of python files
autocmd BufWritePre *.py :%s/\s\+$//e

" fix problems with uncommon shells (fish, xonsh) and plugins running commands
set shell=/bin/zsh

" Typescript
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

" JSON
au BufNewFile,BufRead,BufReadPost *.ejson setf json

" Python
let g:python_highlight_all = 1

" Git
map <c-g>f :2,$ s/^pick/f/<CR>
map <c-g>s :2,$ s/^pick/s/<CR>
