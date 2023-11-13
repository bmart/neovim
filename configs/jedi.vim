let g:jedi#goto_command = '<Leader>d'
" Find ocurrences
let g:jedi#usages_command = '<Leader>o'
" Find assignments
 let g:jedi#goto_assignments_command = '<Leader>a'
" Go to definition in new tab
 nmap <Leader>D :tab split<CR>:call jedi#goto()<CR>

" need showmode off for call signatures in command line  no{option}
set noshowmode
let g:jedi#show_call_signatures = 2

