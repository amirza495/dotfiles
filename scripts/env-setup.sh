#!/bin/bash
# install requirements
# Ubuntu
#sudo apt update
#sudo apt install python3 python3-pip git make ripgrep zip curl wget -y

# OpenSUSE
#sudo zypper in python3 python3-pip git make ripgrep zip curl wget -y
# sudo zypper install -t pattern devel_basis

# install nvim
curl -LO https://github.com/neovim/neovim/releases/download/v0.9.5/nvim.appimage
chmod u+x nvim.appimage 
./nvim.appimage --appimage-extract
mv squashfs-root .nvim-root
mkdir -p .local/bin
ln -s $HOME/.nvim-root/usr/bin/nvim .local/bin/nvim 
echo 'export PATH="$PATH:$HOME/.local/bin"' >> ~/.bashrc

# verify nvim install
# source ~/.bashrc
# nvim 

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"' >> ~/.bashrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.bashrc
source ~/.bashrc
nvm install 16
nvm use 16

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
echo '. "$HOME/.cargo/env"' >> ~/.bashrc

# verify rust install
# source ~/.bashrc 
# cargo

# install lvim
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh) -y
# install lvim fonts
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
