" download vim-plug, if it doesn't exist already
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
Plug('freeo/vim-kalisi')
"Plug('Yggdroot/indentLine')
Plug('tpope/vim-fugitive')
Plug('rust-lang/rust.vim')
"Plug('xolox/vim-misc')
"Plug('xolox/vim-notes')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme kalisi
set background=dark

let g:airline_powerline_fonts = 1

" display line numbers
set number

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" activate iterative search
set is

" close nvim when NERDTree is the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:indentLine_char = '┆'
let g:indentLine_color_term = 29

" make ctrlp open files in new tab by default
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" remap extra keys to us defaults in normal mode
map ü <C-]>
map ö [
map ä ]
map Ö {
map Ä }
map ß /

let g:ycm_rust_src_path = '~/.multirust/toolchains/1.7.0/src'
let g:ycm_autoclose_preview_window_after_insertion = 1

map <C-P> :Files<CR>

" use system clipboard
set clipboard=unnamedplus

" allow buffers to be abandoned
set hidden

" Enable llvm syntax highlighting
augroup filetype
  au! BufRead,BufNewFile *.ll     set filetype=llvm
augroup END
augroup filetype
  au! BufRead,BufNewFile *.td     set filetype=tablegen
augroup END

set mouse=a

" alias jj as <Esc>
imap jj <Esc>

autocmd Filetype json let g:indentLine_setConceal = 0

" respect .gitignore
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
