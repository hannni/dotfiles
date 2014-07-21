set ai              " autoindentation
set expandtab       " spaces instead of tabs
set shiftwidth=4    " indent with 4 spaces
set softtabstop=4   " a tab is 4 spaces
autocmd FileType make set noexpandtab " Don't expand tabs in Makefiles
set number          " show line numbers
syntax enable       " enable syntax highlighting
imap hh <Esc>

"Use TAB to complete when typing words, else inserts TABs as usual.
function! Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
    endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
