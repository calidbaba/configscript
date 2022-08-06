"/.config/nvim/run.vim
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType javascript map <buffer> <F9> :w<CR>:!node %<CR>
autocmd FileType javascript imap <buffer> <F9> <esc>:w<CR>:!node %<CR>
autocmd FileType sh map <buffer> <F9> :w<CR>:!/bin/bash %<CR>
autocmd FileType sh imap <buffer> <F9> <esc>:w<CR>:!/bin/bash %<CR>
autocmd FileType c imap <buffer> <F9> <esc>:w<CR>:!gcc % -o %<  && ./%<<CR>
autocmd FileType c map <buffer> <F9> <esc>:w<CR>:!gcc % -o %<  && ./%<<CR>
autocmd FileType cpp map <buffer> <F9> <esc>:w<CR>:!make<CR>
autocmd FileType cpp map <buffer> <F9> <esc>:w<CR>:!make<CR>
autocmd FileType perl map <buffer> <F9> :w<CR>:!/usr/bin/perl %<CR>
autocmd FileType perl imap <buffer> <F9> <esc>:w<CR>:!/usr/bin/perl %<CR>
autocmd FileType typescript imap <buffer> <F9> <esc>:w<CR>:!tsc % && node %<.js<CR>
autocmd FileType typescript map <buffer> <F9> <esc>:w<CR>:!tsc % && node %<.js<CR>
autocmd FileType rust imap <buffer> <F9> <esc>:w<CR>:!cargo run<CR>
autocmd FileType rust map <buffer> <F9> <esc>:w<CR>:!cargo run<CR>
