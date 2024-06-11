return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'pgsql' }, lazy = true },
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.pioneerdb = "postgres://pioneer:password@localhost/development"

    -- vim.keymap.set('n', '<leader>s', '<ESC>:DB g:pioneerdb<space>')
    vim.keymap.set('n', '<leader>db', '<ESC>:DBUIToggle<CR>')
  end,
}



