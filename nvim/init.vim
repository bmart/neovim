"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"  Python/Ruby Centric init.vim for neovim (https://neovim.io/)  
"
"  Brian Martin 2023
"  https://github.com/bmart/neovim
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ~> Vim Plug Auto Install hack from Fisa-dev  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let vim_plug_just_installed = 0
let vim_plug_path = expand('~/.config/nvim/autoload/plug.vim')
if !filereadable(vim_plug_path)
    echo "Installing Vim-plug..."
    echo ""
    silent !mkdir -p ~/.config/nvim/autoload
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let vim_plug_just_installed = 1
endif

" manually load vim-plug the first time
if vim_plug_just_installed
    :execute 'source '.fnameescape(vim_plug_path)
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ~> VimPlug plugin setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')

Plug 'dense-analysis/ale'

Plug 'arielrossanigo/dir-configs-override.vim'

Plug 'scrooloose/nerdcommenter'

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

Plug 'majutsushi/tagbar'

Plug 'vim-scripts/IndexedSearch'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'davidhalter/jedi-vim', { 'for': 'python' }

Plug 'sheerun/vim-polyglot'

Plug 'mileszs/ack.vim'

Plug 'lilydjwg/colorizer'

Plug 'mattn/emmet-vim'

Plug 'tpope/vim-fugitive'
Plug 'shumphrey/fugitive-gitlab.vim'


Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-rails'

Plug 'sotte/presenting.vim'

Plug 'mfussenegger/nvim-dap'

Plug 'flazz/vim-colorschemes'
Plug 'altercation/vim-colors-solarized'
Plug 'dikiaap/minimalist'
Plug 'skwp/greplace.vim'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }


" Tell vim-plug we finished declaring plugins, so it can load them
call plug#end()

" On first load ever, do this  ( fisa-dev ty) 
if vim_plug_just_installed
    echo "Installing Bundles, please ignore key map error messages"
    :PlugInstall
endif

" General Settings 
source ~/.config/nvim/configs/general-settings.vim

" Colour
source ~/.config/nvim/configs/colour.vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ~> Keybindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>


nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tab navigation
map tt :tabnew 
map <Leader><Right> <ESC>:tabn<CR>
map <Leader><Left> <ESC>:tabp<CR>

" Quickly close quick fix window
nnoremap <leader>c :cclose<CR>

" Save current buffer
nnoremap <leader>w :w<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ~> Plugin Customizations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" VSnip
let g:vsnip_snippet_dir = expand('~/.config/nvim/snippets')
imap <expr> <C-j>   vsnip#available(1)  ? '<Plug>(vsnip-expand)'         : '<C-j>'
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'


" TagBar
nmap <Leader>tb :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" Nerdtree
nmap <Leader>e :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized_flood'
let g:airline#extensions#whitespace#enabled = 0

" Ale
let g:ale_linters = {
\ 'javascript': ['eslint'],
\ 'ruby': ['rubocop']
\}

let g:ale_linters_explicit = 1

" FZF 
source ~/.config/nvim/configs/fzf.vim

" Jedi
source ~/.config/nvim/configs/jedi.vim

" Ack
source ~/.config/nvim/configs/ack.vim

" COC
source ~/.config/nvim/configs/coc.vim

" Fugitive
nnoremap <leader>gb :Git blame<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ~> Env related customizations (optional)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if filereadable(expand("~/.config/nvim/custom.vim"))
  source ~/.config/nvim/custom.vim
endif
