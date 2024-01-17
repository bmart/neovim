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

Plug 'mileszs/ack.vim'

Plug 'lilydjwg/colorizer'

Plug 'tpope/vim-fugitive'
Plug 'shumphrey/fugitive-gitlab.vim'

Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-rails'

Plug 'sotte/presenting.vim'

Plug 'mfussenegger/nvim-dap'

Plug 'flazz/vim-colorschemes'

Plug 'elvessousa/sobrio'

Plug 'altercation/vim-colors-solarized'

Plug 'dikiaap/minimalist'

Plug 'skwp/greplace.vim'

Plug 'hrsh7th/vim-vsnip'

Plug 'hrsh7th/vim-vsnip-integ'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" Tabs
Plug 'romgrk/barbar.nvim'
  Plug 'nvim-tree/nvim-web-devicons'


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

"VSnip 
source ~/.config/nvim/configs/vsnip.vim

"Tagbar 
source ~/.config/nvim/configs/tagbar.vim

"Nerdtree 
source ~/.config/nvim/configs/nerdtree.vim

" Airline
source ~/.config/nvim/configs/airline.vim

"Ale 
source ~/.config/nvim/configs/ale.vim

" FZF 
source ~/.config/nvim/configs/fzf.vim

" Jedi
source ~/.config/nvim/configs/jedi.vim

" Ack
source ~/.config/nvim/configs/ack.vim

" COC
source ~/.config/nvim/configs/coc.vim

" Rails.vim
source ~/.config/nvim/configs/rails.vim

" Fugitive
nnoremap <leader>gb :Git blame<CR>

" tabs
" barbar
source ~/.config/nvim/configs/barbar.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ~> Env related customizations (optional)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if filereadable(expand("~/.config/nvim/env.vim"))
  source ~/.config/nvim/env.vim
endif
