#!/bin/bash

DIRNAME="$(dirname "$0")"
PWD="$(pwd)"

echo "Updating apt"
sudo apt update
echo "Updated apt"

echo "Upgrading apt"
sudp apt upgrade
echo "Upgraded apt"

echo "Installing tmux"
sudo apt install tmux
echo "Installed tmux"

ln -sf ${PWD}/.tmux.conf ~/.tmux.conf
echo "Linked .tmux.conf"

ln -sf ${PWD}/config ~/.ssh/config
echo "Linked .ssh/config"

ln -sf ${PWD}/.bash_aliases ~/.bash_aliases
echo "Linked .bash_aliases"

# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone git@github.com:tmux-plugins/tpm.git ~/.tmux/plugins/tpm
echo "Cloned tpm"

git clone git@github.com:tmux-plugins/tmux-resurrect ~/.tmux/plugins/tmux-resurrect
echo "Cloned tmux-resurrect"

git clone git@github.com:tmux-plugins/tmux-continuum ~/.tmux/plugins/tmux-continuum
echo "Cloned tmux-continuum"

git clone git@github.com:tmux-plugins/tmux-yank ~/.tmux/plugins/tmux-yank
echo "Cloned tmux-yank"

wget https://github.com/andy-5/wslgit/releases/download/v0.9.0/wslgit.exe -P /mnt/c/Users/zbarr --no-check-certificate
echo "Retrieved wslgit.exe into win home dir"

sudo umount /mnt/c
sudo mount -t drvfs C: /mnt/c -o metadata
echo "Remounted filesystem for pycharm setup"

ln -sf /mnt/c/Users/zbarr ~/win
echo "Created symlink to windows home"

git clone ssh://git@bitbucket:7999/sre/app-configs.git /mnt/c/Users/zbarr/PycharmProjects/app-configs
git clone ssh://git@bitbucket:7999/sre/apps-formula.git /mnt/c/Users/zbarr/PycharmProjects/apps-formula
git clone ssh://git@bitbucket:7999/sre/system-formula.git /mnt/c/Users/zbarr/PycharmProjects/system-formula
git clone ssh://git@bitbucket:7999/sre/services-formula.git /mnt/c/Users/zbarr/PycharmProjects/services-formula
git clone ssh://git@bitbucket:7999/sre/salt-pillars.git /mnt/c/Users/zbarr/PycharmProjects/salt-pillars
git clone ssh://git@bitbucket:7999/sre/salt-app.git /mnt/c/Users/zbarr/PycharmProjects/salt-app

echo "Bootstrap complete... be sure to run tpm install (prefix + I) and add wslgit.exe to pycharm configuration"
