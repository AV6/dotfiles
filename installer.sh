# initial
sudo apt update
sudo apt install -y zsh
sudo apt install -y git
sudo apt install -y stow
sudo apt install -y tmux
sudo apt install -y exa

sudo apt install -y vifm
sudo apt install -y ripgrep
sudo apt install -y fd-find
sudo apt install -y fzf
sudo apt install -y gh

sudo snap install nvim --classic
sudo snap install go --classic

go install github.com/jesseduffield/lazygit@latest

# alacritty deps
sudo apt install -y build-essential cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev 

# ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# starship.rs
curl -sS https://starship.rs/install.sh | sh

cd ~/
git clone https://github.com/AV6/neovim-av6.git
ln -s ~/neovim-av6 ~/.config/nvim

# nerd fonts
cd ~/
git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh

cd ~/

# rust,cargo
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

# alacritty
cargo install alacritty

# dotfiles
git clone https://github.com/AV6/dotfiles.git
cd dotfiles

rm ~/.zshrc
stow zsh
stow tmux
stow vifm
stow alacritty
