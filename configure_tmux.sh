#!/bin/bash

mkdir -p ~/.config/tmux/plugins/catppuccin

if [ ! -n "$(ls -A ~/.config/tmux/plugins/catppuccin/tmux 2>/dev/null)" ]; then
    git clone -b v2.1.0 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
fi
cp tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf
