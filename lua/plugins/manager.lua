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
  'tpope/vim-rails',
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
    "nomnivore/ollama.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },

    -- All the user commands added by the plugin
    cmd = { "Ollama", "OllamaModel", "OllamaServe", "OllamaServeStop" },
    
    keys = {
      -- Sample keybind for prompt menu. Note that the <c-u> is important for selections to work properly.
      {
        "<leader>oo",
        ":<c-u>lua require('ollama').prompt()<cr>",
        desc = "ollama prompt",
        mode = { "n", "v" },
      },

      -- Sample keybind for direct prompting. Note that the <c-u> is important for selections to work properly.
      {
        "<leader>oG",
        ":<c-u>lua require('ollama').prompt('Generate_Code')<cr>",
        desc = "ollama Generate Code",
        mode = { "n", "v" },
      },
    },
    ---@type Ollama.Config
    opts = {
      -- your configuration overrides
      model = "mixtral:8x7b",
      url = "https://chadgpt.oxaro.io:8443/v1/engines",
    }
  }
}

local opts = {}

require("lazy").setup(plugins, opts)

