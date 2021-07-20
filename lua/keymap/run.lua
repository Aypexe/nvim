local cmd = vim.cmd

-- run
cmd [[
    autocmd FileType rust nmap <buffer> <Leader>r :w<CR>:!cargo run<CR>
    autocmd FileType rust imap <buffer> <Leader>r <esc>:w<CR>:!cargo run<CR>
    
    autocmd FileType go map <buffer> <Leader>r :w<CR>:!go run .<CR>
    autocmd FileType go imap <buffer> <Leader>r <esc>:w<CR>:!go run .<CR>

    autocmd FileType python map <buffer> <Leader>r :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
    autocmd FileType python imap <buffer> <Leader>r <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
]]

-- test
cmd [[
    autocmd FileType go map <buffer> <Leader>t :w<CR>:!go test<CR>
    autocmd FileType go imap <buffer> <Leader>t <esc>:w<CR>:!go test<CR>
]]

-- splits
cmd [[
    map <C-j> <C-W>j
    map <C-k> <C-W>k
    map <C-h> <C-W>h
    map <C-l> <C-W>l
]]

-- space test
cmd [[
  tnoremap "<space>" "<space>"
]]
