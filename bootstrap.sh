#!/bin/bash

DIRNAME="$(dirname "$0")"
echo ${DIRNAME}

PWD="$(pwd)"
echo ${PWD}

ln -sf ${PWD}/.tmux.conf ~/.tmux.conf

ln -sf ${PWD}/config ~/.ssh/config
