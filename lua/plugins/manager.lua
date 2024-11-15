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
 'nvim-telescope/telescope.nvim',
 'dbeniamine/cheat.sh-vim',
 'dense-analysis/ale',
 'scrooloose/nerdcommenter',
-- 'scrooloose/nerdtree',
 'ryanoasis/vim-devicons',
 'majutsushi/tagbar',
 'vim-scripts/IndexedSearch',
 'vim-airline/vim-airline',
 'vim-airline/vim-airline-themes',
 -- {
 --  'junegunn/fzf',
 --  dir = '~/.fzf',
 ---  build = './install --all',

 -- },  
 -- { 
 --  'junegunn/fzf.vim',
 --  dependencies = { 'junegunn/fzf' }
 -- },
 'mileszs/ack.vim',
 'lilydjwg/colorizer',
 'tpope/vim-fugitive',
 'shumphrey/fugitive-gitlab.vim',
  --{
  --  'neoclide/coc.nvim',
  --    branch = "release",
  --    build = "yarn install"
  --},
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  {
    'tpope/vim-rails',
    config = function()
      vim.keymap.set("n", "<Leader>m", ":Emodel", { silent = true })
    end
  },
  {
    'sotte/presenting.vim',
    config = function()
      vim.keymap.set("n", "<Leader>p", "<ESC>:PresentingStart<CR>", { silent = true })
    end
  },
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
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("harpoon"):setup()
    end,
    keys = {
      { "<leader>A", function() require("harpoon"):list():add() end, desc = "harpoon file", },
      { "<leader>a", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "harpoon quick menu", },
      { "<leader>ad", function() require("harpoon"):list():remove(selected_entry) end, desc = "delete selected entry", },
      { "<leader>1", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1", },
      { "<leader>2", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2", },
      { "<leader>3", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3", },
      { "<leader>4", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4", },
      { "<leader>5", function() require("harpoon"):list():select(5) end, desc = "harpoon to file 5", },
      { "<leader>6", function() require("harpoon"):list():select(6) end, desc = "harpoon to file 6", },
      { "<leader>7", function() require("harpoon"):list():select(7) end, desc = "harpoon to file 7", },
      { "<leader>8", function() require("harpoon"):list():select(8) end, desc = "harpoon to file 8", },
    }
  },
  'rose-pine/neovim',
  require('plugins.config.neotree'),
  require('plugins.config.dadbod'),
  { 'glacambre/firenvim', build = ":call firenvim#install(0)" }

}

local opts = {}

require("lazy").setup(plugins, opts)

