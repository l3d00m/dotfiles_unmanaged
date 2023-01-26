#!/bin/bash

curl -L git.io/antigen > antigen.zsh
sudo apt install -qy rsync
rsync -av ~/.dotfiles/ ~/ --exclude=.git/ --exclude=.github/ --exclude=install.sh
