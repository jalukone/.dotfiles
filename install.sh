# install nix
sh <(curl -L https://nixos.org/nix/install) --no-daemon

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

# install packages
nix-env -iA \
	nixpkgs.zsh \
	nixpkgs.antibody \
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
	nixpkgs.python311 \
	nixpkgs.exa \
	nixpkgs.openssh 


# stow dotfiles
stow git
stow nvim
stow zsh

# add zsh as a login shell
command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
sudo chsh -s $(which zsh) $USER

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

# bundle zsh plugins 
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
