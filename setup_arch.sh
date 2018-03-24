#!/bin/sh

sudo pacman -Syy stow neovim python-pip fish tmux rxvt-unicode-terminfo
pip install --user neovim

stow nvim
stow tmux
stow fish

printf "\nset -x TERM=rxvt-unicode-256color" >> ~/.config/fish/config.fish
printf "\nexport TERM=rxvt-unicode-256color" >> ~/.bashrc

nvim # download plugins and stuff

