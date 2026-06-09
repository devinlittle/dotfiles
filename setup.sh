#!/usr/bin/env bash

set -e

# install sutff for dev setup
echo "Installing System Packages"
sudo pacman -S --noconfirm \
  ghostty bash-completion pinentry gnupg \
  eza git stow lazygit imagemagick mermaid-cli tectonic texlive-binextra fd ripgrep fzf \
  zstd 7zip ncdu btop tree flatpak \
  neovim vim stylua shellcheck shfmt flake8 ttf-fira-code noto-fonts \
  just tree-sitter tree-sitter-cli \
  bun fnm rustup protobuf

rustup default stable

echo "Installing Desktop Env"
sudo pacman -S --no-confirm \
  plasma-meta sddm xdg-desktop-portal-kde \
  fuse2 fuse3 \
  pipewire pipewire-pulse pipewire-alsa wireplumber

sudo systemctl enable sddm

echo "Installing Flatpaks"
flatpak install flathub io.github.kolunmi.Bazaar
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub org.mozilla.firefox
flatpak install flathub com.valvesoftware.Steam
flatpak install flathub dev.vencord.Vesktop
flatpak install flathub org.prismlauncher.PrismLauncher
flatpak install flathub org.qbittorrent.qBittorrent
flatpak install flathub io.dbeaver.DBeaverCommunity
flatpak install flathub com.getpostman.Postman

echo "Configuring SSH for reomte-dev"
sudo bash -c 'cat << EOF >> /etc/ssh/sshd_config
AllowAgentForwarding yes
AllowStreamLocalForwarding yes
StreamLocalBindUnlink yes
EOF'

echo "Starting services"
systemctl --user enable --now pipewire.socket pipewire-pulse.socket wireplumber.service
sudo systemctl restart sshd.service

stow --target=$HOME . # create symlinks for config files and DONE!!
