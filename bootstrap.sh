#!/bin/bash

DIRNAME="$(dirname "$0")"
PWD="$(pwd)"

ln -sf ${PWD}/.tmux.conf ~/.tmux.conf
echo "Linked .tmux.conf"

ln -sf ${PWD}/config ~/.ssh/config
echo "Linked .ssh/config"

ln -sf ${PWD}/.bash_aliases ~/.bash_aliases
echo "Linked .bash_aliases"

mkdir -p ~/.config/karabiner
ln -sf ${PWD}/karabiner/karabiner.json ~/.config/karabiner/karabiner.json
echo "Linked karabiner.json"

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# git clone git@github.com:tmux-plugins/tpm.git ~/.tmux/plugins/tpm
echo "Cloned tpm"

git clone git@github.com:tmux-plugins/tmux-resurrect ~/.tmux/plugins/tmux-resurrect
echo "Cloned tmux-resurrect"

git clone git@github.com:tmux-plugins/tmux-continuum ~/.tmux/plugins/tmux-continuum
echo "Cloned tmux-continuum"

git clone git@github.com:tmux-plugins/tmux-yank ~/.tmux/plugins/tmux-yank
echo "Cloned tmux-yank"

echo "Bootstrap complete... be sure to run tpm install (prefix + I) and change the terminal setting to allow ctrl-shift-v for paste"
