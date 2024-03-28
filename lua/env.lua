-- rubocop
vim.g.ale_ruby_rubocop_executable = '/Users/brianmartin/.gem/ruby/3.1.4/bin/rubocop' 

-- Fugitive-gitlab
vim.g.fugitive_gitlab_domains =  { 'https://gitlab.rcgtconsulting.io' }

-- Open dev config
vim.keymap.set("n","<leader>c",":e config/dev/config.json<CR>")
