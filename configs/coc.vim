" COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)
nmap <silent>rr <Plug>(coc-rename)
nmap <silent>g[ <Plug>(coc-diagnostic-prev)
nmap <silent>g] <Plug>(coc-diagnostic-next)
nmap <silent> gs :call CocAction('jumpDefinition', 'split')<CR>

let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-solargraph',
  \ ]

