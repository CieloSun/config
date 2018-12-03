#!/bin/bash
# install apps for this shell
apt update
apt install -y wget git zsh
# config git for me
git config --global user.email "cielosun@outlook.com"
git config --global user.name "CieloSun"
# oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# git clone z
git clone --depth 1 https://github.com/rupa/z.git
# copy my bashrc
echo "exec zsh\nsource .zshrc">>~/.bashrc
# add context in zshrc
echo "# customize\nsource ~/config/.aliases\n# wsl cannot use z directly\nunsetopt BG_NICE\n. ~/config/z/z.sh">>~/.zshrc

