syntax enable
set number

" set relativenumber
set smartindent
set tabstop=2
set shiftwidth=2
set backspace=2
set expandtab

colorscheme ron
highlight LineNr ctermbg=237
" highlight Comment ctermfg=32
highlight Visual cterm=reverse ctermbg=black
highlight ColorColumn ctermbg=0

filetype on

set pastetoggle=<Leader>v
cmap w!! w !sudo tee > /dev/null %

autocmd BufWritePre *.hs :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.nix :%s/\s\+$//e
autocmd BufWritePre *.rs :%s/\s\+$//e
autocmd BufWritePre *.sh :%s/\s\+$//e
autocmd BufWritePre *.yml :%s/\s\+$//e
" autocmd BufWritePre *.* :%s/\s\+$//e

autocmd BufRead,BufEnter ~/dev/randomhacks/icfpc*tbd*/*py setlocal expandtab tabstop=4 shiftwidth=4
autocmd BufRead,BufEnter ~/dev/randomhacks/icfpc*tbd*/*rs setlocal expandtab tabstop=4 shiftwidth=4
autocmd BufRead,BufEnter ~/dev/serokell/*/*hs setlocal expandtab cc=80
autocmd FileType make setlocal noexpandtab shiftwidth=4 softtabstop=0

augroup vimrc_todo
    au!
    au Syntax * syn match MyTodo /<(FIXME|NOTE|TODO|OPTIMIZE|XXX)/
          \ containedin=.*Comment,vimCommentTitle
augroup END
hi def link MyTodo Todo
