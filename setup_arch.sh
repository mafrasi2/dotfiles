#!/bin/sh

sudo pacman -Syy stow neovim python-pip fish tmux rxvt-unicode-terminfo ripgrep fd curl
pip install --user neovim

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

stow nvim
stow tmux
stow fish

fish -c "fisher add jethrokuan/z"

printf "\nset -x TERM rxvt-unicode-256color" >> ~/.config/fish/config.fish
printf "\nexport TERM=rxvt-unicode-256color" >> ~/.bashrc

nvim # download plugins and stuff

