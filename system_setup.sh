#!/bin/bash

# install zsh
sudo apt install zsh || sudo pacman -S zsh || sudo dnf install zsh 
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
chsh -s $(which zsh)

# install packages
sudo apt install jq ripgrep xsel || sudo pacman -S jq ripgrep xsel || sudo dnf install jq ripgrep xsel   

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install ohmyzsh theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install


# install neovim
git clone git@github.com:neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd -

# install nodejs and npm
curl -sL https://deb.nodesource.com/setup_current.x | sudo -E bash - && sudo apt-get install -y nodejs || pacman -S nodejs npm

# install tmux
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make
cd -
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install awscli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# install python poetry
curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python

# install kubectl
curl -LO "https://storage.googleapis.com/kubernetes-release/release/\
$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
mv kubectl /usr/local/bin/kubectl

# install helm
curl -LO https://git.io/get_helm.sh
chmod 700 get_helm.sh
./get_helm.sh

# install alacritty
git clone https://github.com/alacritty/alacritty.git
cd alacritty
yes | curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup override set stable
rustup update stable
sudo apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev python3 || \
sudo dnf install cmake freetype-devel fontconfig-devel libxcb-devel || \
sudo pacman -S cmake freetype2 fontconfig pkg-config make libxcb
cargo build --release
cd -
