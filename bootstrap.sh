#!/bin/bash

DIRNAME="$(dirname "$0")"
PWD="$(pwd)"

ln -sf ${PWD}/.tmux.conf ~/.tmux.conf
echo "Linked .tmux.conf"

ln -sf ${PWD}/config ~/.ssh/config
echo "Linked .ssh/config"

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "Cloned tpm... run prefix + I in tmux environment to complete plugin installation"

# git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux/plugins/tmux-resurrect
# echo "Cloned tmux-resurrect"

# git clone https://github.com/tmux-plugins/tmux-continuum ~/.tmux/plugins/tmux-continuum
# echo "Cloned tmux-continuum"
