#!/bin/sh

sudo pacman -Syy stow neovim python-pip fish tmux
pip install --user neovim

stow nvim
stow tmux
stow fish

printf "\nexport TERM=rxvt-unicode-256color" >> ~/.bashrc

nvim # download plugins and stuff

