#!/bin/sh

cd ~/
printf "\e[1;32m* Requesting Sudo..\e[0m\n"
sudo apt update
printf "\e[1;32m* Downloading Stage 1..\e[0m\n"

sudo apt install sway waybar swaylock swayidle swaybg 
gvfs-backends foot mtools dosfstools acpi acpid
avahi-daemon polkit-kde-agent-1 network-manager network-manager-gnome
light pamixer pulseaudio alsa-utils pavucontrol
volumeicon-alsa pulsemixer wofi sway-notification-center wob
libnotify-bin suckless-tools vim clipman wayland-protocols xwayland
libgtk-layer-shell-dev xdg-desktop-portal-wlr dex jq gedit build-essential
libpam0g-dev libxcb1-dev libglib2.0-bin libdbus-glib-1-2 fonts-firacode fonts-liberation2
fonts-noto-color-emoji fonts-font-awesome qt6-wayland v4l2loopback-dkms xfonts-terminus wget curl unzip zip

printf "\e[1;32m* Downloading Stage 2..\e[0m\n"
sudo apt install obs-studio
sudo apt install software-properties-common -y
sudo apt-add-repository contrib non-free -y
sudo apt install ttf-mscorefonts-installer
sudo fc-cache -fv

printf "\e[1;32m* Stage 3 : Setup\e[0m\n"

sudo install -d -m 0755 /etc/apt/keyrings

# Import the Mozilla APT repository signing key:
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null

# The fingerprint should be 35BAA0B33E9EB396F59CA838C0BA5CE6DC6315A3
gpg -n -q --import --import-options import-show /etc/apt/keyrings/packages.mozilla.org.asc | awk '/pub/{getline; gsub(/^ +| +$/,""); print "\n"$0"\n"}'

# Next, add the Mozilla APT repository to your sources list:
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null

# Update your package list and install the Firefox .deb package:
sudo apt-get update && sudo apt-get install firefox-beta  # Replace "beta" by "devedition" for Developer Edition

sudo systemctl enable acpid
sudo systemctl enable avahi-daemon
xdg-user-dirs-update
sudo modprobe v4l2loopback devices=1 video_nr=10 card_label="OBS Camera" exclusive_caps=1

printf "\e[1;32m* Stage 3.1 - Nix\e[0m\n"
sh <(curl -L https://nixos.org/nix/install) --no-daemon

printf "\e[1;32m* Stage 3.2 - Configs\e[0m\n"
cp -r ~/dot-deb/sway/config ~/.config/sway/
cp -r ~/dot-deb/sway/waybar ~/.config/waybar/


printf "\e[1;32m* There are some stuffs need to configured still, but this should be a good starting point.\e[0m\n"

