-- COC
vim.keymap.set("n", "gd", "<Plug>(coc-definition)", { silent = true })
vim.keymap.set("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
vim.keymap.set("n", "gi", "<Plug>(coc-implementation)", { silent = true })
vim.keymap.set("n", "gr", "<Plug>(coc-references)", { silent = true })
vim.keymap.set("n", "rr", "<Plug>(coc-rename)", { silent = true })
vim.keymap.set("n", "g[", "<Plug>(coc-diagnostic-prev)", { silent = true })
vim.keymap.set("n", "g]", "<Plug>(coc-diagnostic-next)", { silent = true })

vim.g.coc_global_extensions = { "coc-json", "coc-solargraph" }
