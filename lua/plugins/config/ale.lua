--  Ale
vim.g.ale_linters = { 
  javascript = {'eslint'},
  ruby =  {'rubocop' },
}

vim.g.ale_fixers = {
   ["*"] = {'remove_trailing_lines', 'trim_whitespace'},
   ruby = {'rubocop'},
}

vim.g.ale_linters_explicit = 1
-- map <Leader>af <ESC>:ALEFix<CR>
vim.keymap.set('n', '<leader>af', '<ESC>:ALEFix<CR>')
