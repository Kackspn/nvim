#!/bin/sh

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage

sudo mkdir -p /opt/nvim
sudo mv nvim.appimage /opt/nvim/nvim

sudo apt install zsh npm python3.10-venv luarocks clangd pip cargo ripgrep cmake -y

mv .zshrc ~
sudo chsh -s $(which zsh)
cd ~
source .zshrc
sudo mv nvim .config

git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
sudo mv zsh-syntax-highlighting /usr/share/zsh
sudo mv zsh-autosuggestions /usr/share/zsh
