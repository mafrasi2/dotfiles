if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
Plug('tpope/vim-commentary')
Plug('freeo/vim-kalisi')
Plug('kien/ctrlp.vim')
Plug('scrooloose/nerdtree')
Plug('vim-airline/vim-airline')
Plug('vim-airline/vim-airline-themes')
Plug('tpope/vim-surround')
Plug('christoomey/vim-tmux-navigator')
Plug('Valloric/YouCompleteMe')
call plug#end()

colorscheme kalisi
set background=dark

let g:airline_powerline_fonts = 1

set number

autocmd VimEnter * NERDTree

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set is

" close nvim when NERDTree is the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

