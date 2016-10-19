" Easy escape.
inoremap jk <esc>
" Should be copy paste to clipboard
vmap  y: call system("xclip -i -selection clipboard", getreg("\""))
" Kill trailing whitespace on save
"autocmd FileType c,cpp,java,php,python autocmd BufWritePre <buffer> :%s/\s\+$//e
"Get rid of trailing whitespace before each save
autocmd BufWritePre * :%s/\s\+$//e

" hotkey for listing buffers
nnoremap <F5> :buffers<CR>:buffer<Space>
set nocompatible " Don't emulate vi bugs

"set mouse=a " turn on mouse
set scrolloff=3 " when scrolling always show 3 bottom lines
set showcmd " show command
set hlsearch " Highlight searched terms

"Map Q to repeat the last recorded macro
map Q @@
"Make Y behave like other captials
map Y y$
"Force Saving Files that Require Root Permission
cmap w!! %!sudo tee > /dev/null %
"Reload vimrc when its saved
au BufWritePost .vimrc so ~/.vimrc
set tabstop=2 " Number of spaces a tab expands to
set expandtab " expand tabs to spaces
set shiftwidth=2 " Number of spaces of indentation to use
"set autoindent

