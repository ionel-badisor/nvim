"CONFIGURATION ---------------------------------------------------------------

"Syntax highlight-------------------------------------------------------------
syntax on
set foldmethod=syntax
set complete =.,w,b,u,t,i,kspell

"Remap some alt keys-----------------------------------------------
noremap <M-c> <Esc>
inoremap <M-c> <Esc>
"noremap <M-a> :echo "m-a works!"<cr>
"noremapr<M-e> :echo "m-e works!"<cr>
"noremap <M-o> :echo "m-o works!"<cr>
nmap <M-a> h
nmap <M-e> j
nmap <M-o> k
nmap <M-h> l

"Tab key (only spaces)----------------------------------------------
set tabstop=4
set softtabstop=4
set shiftwidth=4
"set expandtab

"Line number--------------------------------------------------------
"set nu "line number visible
"set rnu "use relative line number
map <F12> :set nu! rnu!<CR>
imap <F12> <C-o>:set nu! rnu!<CR>


"Special characters-----------------------------------------------------------
set list
"----Shortcut to rapidly toggle `set list`
nmap <leader>` :set list!<CR>
"----Use the same symbols as TextMate for tabstops and EOLs
"set listchars=nbsp:.,tab:▸\ ,eol:¬,space:·
":set listchars+=space:␣
":set listchars+=space:·
set showbreak=↪\
set listchars=tab:→\ ,eol:↲,space:·,nbsp:␣,trail:•,extends:⟩,precedes:⟨

"spell check----------------------------------------------------------
set spelllang=en_us
"set spell spelllang=en_us
nmap <leader>l :setlocal spell!<CR>
nmap <leader>le :setlocal spell! spelllang=en_us<CR>
map <F7> :setlocal spell! spelllang=en_us<CR>
imap <F7> <C-o>:setlocal spell! spelllang=en_us<CR>
nmap <leader>lr :setlocal spell! spelllang=ro_ro<CR>
map <F8> :setlocal spell! spelllang=ro_ro<CR>
imap <F8> <C-o>:setlocal spell! spelllang=ro_ro<CR>

" white spaces highlight-------------------------------
highlight ExtraWhitespace ctermbg=blue guibg=blue
augroup WhitespaceMatch
  " Remove ALL autocommands for the WhitespaceMatch group.
  autocmd!
  autocmd BufWinEnter * let w:whitespace_match_number =
        \ matchadd('ExtraWhitespace', '\s\+$')
  autocmd InsertEnter * call s:ToggleWhitespaceMatch('i')
  autocmd InsertLeave * call s:ToggleWhitespaceMatch('n')
augroup END
function! s:ToggleWhitespaceMatch(mode)
  let pattern = (a:mode == 'i') ? '\s\+\%#\@<!$' : '\s\+$'
  if exists('w:whitespace_match_number')
    call matchdelete(w:whitespace_match_number)
    call matchadd('ExtraWhitespace', pattern, 10, w:whitespace_match_number)
  else
    " Something went wrong, try to be graceful.
    let w:whitespace_match_number =  matchadd('ExtraWhitespace', pattern)
  endif
endfunction

"remove trailing-withespaces
nnoremap <leader>rtw :%s/\s\+$//e<CR>
nnoremap <F9> :%s/\s\+$//e<CR>

call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'ionel-badisor/vim-bitbake'
call plug#end()
