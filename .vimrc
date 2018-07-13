if has("autocmd")
  autocmd BufWritePre * :silent !mkdir -p %:p:h
end

noremap % v%
set colorcolumn=80
sy on
set number
set bg=dark
set modeline
set ls=2
autocmd BufRead,BufNewFile *.sql,*.sql.j2 set filetype=sql
autocmd FileType yaml,json,ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType perl,python,sh setlocal ts=4 sts=4 sw=4 expandtab
autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby
autocmd BufWritePost *.go !gofmt -w %
autocmd BufWritePost *.pl,*.pm !perltidy -q -i=4 -b -bext=/ -w %
command! -range=% CO <line1>,<line2>s/\(.*\)/#\1/g
command! -range=% CI <line1>,<line2>s/#\(.*\)/\1/g
set hlsearch
nnoremap <CR> :nohlsearch<CR>/<BS><CR>
