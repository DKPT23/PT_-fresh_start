#!/bin/bash

apt update && apt -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" install -y kali-linux-headless seclists nuclei golang-go neovim pipx python3-venv
pipx install git+https://github.com/byt3bl33d3r/CrackMapExec
chsh -s /usr/bin/zsh
sed -i 's/#\[ "\$EUID"/\[ "\$EUID"/' $HOME/.zshrc
echo 'export PATH="/opt:$HOME/.local/bin:$HOME/go/bin:$PATH"' >> $HOME/.zshrc 
