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

" Override configs by directory
Plug 'arielrossanigo/dir-configs-override.vim'

" Code commenter
Plug 'scrooloose/nerdcommenter'

" Better file browser
Plug 'scrooloose/nerdtree'

" Class/module browser
Plug 'majutsushi/tagbar'

" Search results counter
Plug 'vim-scripts/IndexedSearch'

" Airline
Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Jedi
Plug 'davidhalter/jedi-vim', { 'for': 'python' }

" Better language packs
Plug 'sheerun/vim-polyglot'

" Ack code search (requires ack installed in the system)
Plug 'mileszs/ack.vim'

" Paint css colors with the real color
Plug 'lilydjwg/colorizer'

" Generate html in a simple way
Plug 'mattn/emmet-vim'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'shumphrey/fugitive-gitlab.vim'

" Icons for NERDTree
Plug 'ryanoasis/vim-devicons'

" Typescript / COC
Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-rails'

Plug 'sotte/presenting.vim'

" Debug Adaptor Protocol
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

" Non-plugin specific Key bindings
source ~/.config/nvim/configs/keybindings.vim

" Colour
source ~/.config/nvim/configs/colour.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ~> Plugin Customizations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Fugitive-gitlab
let g:fugitive_gitlab_domains = ['https://gitlab.rcgtconsulting.io']
nnoremap <leader>gb :Git blame<CR>

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ~> env related customizations (optional)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if filereadable(expand("~/.config/nvim/custom.vim"))
  source ~/.config/nvim/custom.vim
endif
