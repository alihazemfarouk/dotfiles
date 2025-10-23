#!/usr/bin/env zsh

source ~/.zshrc
tmux attach -t "$(tmux ls -F '#{session_name}' 2>/dev/null | head -n 1)" 2>/dev/null || tmux new -s main

