-- COC
vim.keymap.set("n", "<silent>gd", "<Plug>(coc-definition)")
vim.keymap.set("n", "<silent>gy", "<Plug>(coc-type-definition)")
vim.keymap.set("n", "<silent>gi", "<Plug>(coc-implementation)")
vim.keymap.set("n", "<silent>gr", "<Plug>(coc-references)")
vim.keymap.set("n", "<silent>rr", "<Plug>(coc-rename)")
vim.keymap.set("n", "<silent>g[", "<Plug>(coc-diagnostic-prev)")
vim.keymap.set("n", "<silent>g]", "<Plug>(coc-diagnostic-next)")
vim.keymap.set("n", "<silent>gs", ":call CocAction('jumpDefinition', 'split')<CR>")

vim.g.coc_global_extensions = { "coc-json", "coc-solargraph" }

