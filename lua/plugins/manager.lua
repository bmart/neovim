local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
  {
    'arakkkkk/kanban.nvim',
    dependencies = {
      'hrsh7th/nvim-cmp'
    },
    opts = {
     markdown = {
       description_folder = "./tasks",
       list_head = "##"
     }

    }
  },
  -- 'nvim-telescope/telescope.nvim',
 'dense-analysis/ale',
 'scrooloose/nerdcommenter',
 'scrooloose/nerdtree',
 'ryanoasis/vim-devicons',
 'majutsushi/tagbar',
 'vim-scripts/IndexedSearch',
 'vim-airline/vim-airline',
 'vim-airline/vim-airline-themes',
 {
   'junegunn/fzf',
   dir = '~/.fzf',
   build = './install --all',

 },  
 { 
   'junegunn/fzf.vim',
   dependencies = { 'junegunn/fzf' }
 },
 'mileszs/ack.vim',
 'lilydjwg/colorizer',
 'tpope/vim-fugitive',
 'shumphrey/fugitive-gitlab.vim',
  {
    'neoclide/coc.nvim',
      branch = "release",
      build = "yarn install"
  },
  {
    'tpope/vim-rails',
    config = function()
      vim.keymap.set("n", "<Leader>m", ":Emodel", { silent = true })
    end
  },
  'sotte/presenting.vim',
  'mfussenegger/nvim-dap',
  'flazz/vim-colorschemes',
  'elvessousa/sobrio',
  'altercation/vim-colors-solarized',
  'dikiaap/minimalist',
  'skwp/greplace.vim',
  'hrsh7th/vim-vsnip',
  'hrsh7th/vim-vsnip-integ',
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  'lewis6991/gitsigns.nvim',
  --  {
   -- "catppuccin/nvim",
   -- lazy = false,
   -- name = "catppuccin",
   -- priority = 1000,
   -- config = function()
   --   vim.cmd.colorscheme "catppuccin-mocha"
   -- end
   -- },
  'vim-ruby/vim-ruby',
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  'rose-pine/neovim',
  require('plugins.config.neotree'),
  require('plugins.config.dadbod')
}

local opts = {}

require("lazy").setup(plugins, opts)

