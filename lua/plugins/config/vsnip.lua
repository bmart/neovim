-- VSnip
vim.g.vsnip_snippet_dir = '~/.config/nvim/snippets'
-- imap <expr> <C-j>   vsnip#available(1)  ? '<Plug>(vsnip-expand)'         : '<C-j>'
-- imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
-- smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

vim.keymap.set('n','<expr> <C-l>',"vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'")
