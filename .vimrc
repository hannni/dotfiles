" autoindentation, tabs
set ai
set expandtab
set shiftwidth=4
set softtabstop=4
" Line numbers
set number
" Color
syntax enable

"Use TAB to complete when typing words, else inserts TABs as usual.
function! Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
    endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:autocmd FileType make set noexpandtab " Don't expand tabs in Makefiles
:imap hh <Esc>
