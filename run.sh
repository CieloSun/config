#!/bin/bash
apt update
apt install -y wget git zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cd ~
git clone --depth 1 https://github.com/rupa/z.git
cp ~/config/.bashrc ~/.bashrc
echo -e "# customize\nsource ~/config/.aliases\n# wsl cannot use z directly\nunsetopt BG_NICE\n. ~/config/z/z.sh">>~/.zshrc

