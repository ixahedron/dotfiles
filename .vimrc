syntax enable
set number

" set relativenumber
set smartindent
set tabstop=2
set shiftwidth=2
set backspace=2
set expandtab

highlight LineNr ctermbg=237
highlight Comment ctermfg=32
highlight Visual cterm=reverse ctermbg=black

filetype on

set pastetoggle=<Leader>v
cmap w!! w !sudo tee > /dev/null %
