local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'dense-analysis/ale'

  use 'scrooloose/nerdcommenter'

  use 'scrooloose/nerdtree'
  use 'ryanoasis/vim-devicons'

  use 'majutsushi/tagbar'

  use 'vim-scripts/IndexedSearch'

  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  use { 'junegunn/fzf',  dir = '~/.fzf', run = './install --all' }
  use 'junegunn/fzf.vim'

  use 'mileszs/ack.vim'

  use 'lilydjwg/colorizer'

  use 'tpope/vim-fugitive'
  use 'shumphrey/fugitive-gitlab.vim'


  use { 'neoclide/coc.nvim', branch = 'release' }

  use 'tpope/vim-rails'

  use 'sotte/presenting.vim'

  use 'mfussenegger/nvim-dap'

  use 'flazz/vim-colorschemes'

  use 'elvessousa/sobrio'

  use 'altercation/vim-colors-solarized'

  use 'dikiaap/minimalist'

  use 'skwp/greplace.vim'

  use 'hrsh7th/vim-vsnip'

  use 'hrsh7th/vim-vsnip-integ'

  use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install' }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
