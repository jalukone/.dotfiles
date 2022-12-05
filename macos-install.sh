
# install packages
nix-env -iA \
	nixpkgs.git \
	nixpkgs.neovim \
	nixpkgs.stow \
	nixpkgs.ripgrep \
	nixpkgs.bat \
	nixpkgs.gcc \
	nixpkgs.bottom \
	nixpkgs.gdu \
	nixpkgs.lazygit \
	nixpkgs.neofetch \
	nixpkgs.exa \


# stow dotfiles
stow git
#stow nvim
stow zsh
git config --global https.proxy proxy-listen-ip:proxy-listen-port


#Install AstroNvim
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim

# bundle zsh plugins 
# antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
