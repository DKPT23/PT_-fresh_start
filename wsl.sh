#!/bin/bash

apt update
apt -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" install -y kali-linux-headless seclists nuclei golang-go neovim pipx python3-venv
pipx install git+https://github.com/Pennyw0rth/NetExec
pipx install git+https://github.com/login-securite/DonPAPI
pipx install git+https://github.com/RhinoSecurityLabs/pacu
pipx install git+https://github.com/cddmp/enum4linux-ng

go install github.com/projectdiscovery/httpx/cmd/httpx@latest
chsh -s /usr/bin/zsh
sed -i 's/#\[ "\$EUID"/\[ "\$EUID"/' $HOME/.zshrc
echo 'export PATH="/opt:$HOME/.local/bin:$HOME/go/bin:$PATH"' >> $HOME/.zshrc 
