#!/bin/bash

apt update && apt install -y kali-linux-headless seclists nuclei golang-go neovim pipx python3-venv
pipx install git+https://github.com/Porchetta-Industries/CrackMapExec
chsh -s /bin/zsh
sed -i 's/#\[ "\$EUID"/\[ "\$EUID"/' $HOME/.zshrc
echo 'export PATH="$PATH:/opt:$HOME/.local/bin:$HOME/go/bin"' > $HOME/.zshrc 
