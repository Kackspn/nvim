#!/bin/sh

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage

sudo mkdir -p /opt/nvim
sudo mv nvim.appimage /opt/nvim/nvim

sudo apt install wget zsh npm xclip luarocks clangd pip cargo ripgrep cmake -y

git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
sudo mv zsh-syntax-highlighting /usr/share/zsh
sudo mv zsh-autosuggestions /usr/share/zsh
mv .zshrc ~
cd ~ && ln .zshrc .congif/nvim/.zshrc

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip
unzip Hack.zip
mkdir HackNerdFont && mv HackNerdFont-BoldItalic.ttf HackNerdFont-Bold.ttf HackNerdFont-Italic.ttf HackNerdFont-Regular.ttf HackNerdFont/ && sudo mv HackNerdFont /usr/share/fonts/ 
sudo fc-cache -f -v


zsh
chsh -s $(which zsh)
cd ~
source .zshrc
sudo mv nvim .config

