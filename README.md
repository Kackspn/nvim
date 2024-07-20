INSTALL

#ZINIT
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
zinit self-update

#NEOVIM
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage

sudo mkdir -p /opt/nvim
sudo mv nvim.appimage /opt/nvim/nvim

#NEOVIM DEPENDENCIES
sudo apt install npm python3.11-venv luarocks clangd pip cargo ripgrep cmake

#ZSH CONFIG
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
sudo mv zsh-syntax-highlighting /usr/share/zsh
sudo mv zsh-autosuggestions /usr/share/zsh
