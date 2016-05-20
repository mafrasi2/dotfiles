" download vim-plug, if it doesn't exist already
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
Plug('tpope/vim-commentary')
Plug('freeo/vim-kalisi')
Plug('kien/ctrlp.vim')
Plug('jistr/vim-nerdtree-tabs')
Plug('scrooloose/nerdtree')
Plug('vim-airline/vim-airline')
Plug('vim-airline/vim-airline-themes')
Plug('tpope/vim-surround')
Plug('christoomey/vim-tmux-navigator')
Plug('Valloric/YouCompleteMe')
Plug('Yggdroot/indentLine')
Plug('jmcantrell/vim-virtualenv')
call plug#end()

colorscheme kalisi
set background=dark

let g:airline_powerline_fonts = 1

" display line numbers
set number

" open NERDTree on start
"autocmd VimEnter * NERDTreeTabsOpen
let g:nerdtree_tabs_open_on_console_startup = 1
" focus the editor window, not NERDTree on start
autocmd VimEnter * wincmd p

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

" remap extra keys to us defaults in normal mode
map ü <C-]>
map ö [
map ä ]
map Ö {
map Ä }
map ß /
