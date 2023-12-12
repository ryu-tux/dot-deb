# Debian - Dots
My Monochrome and Minimal theme for Debian Sway.
(WIP for the install script, as i'm still new to scripting.)
![image](https://github.com/ryu-tux/dotfiles/assets/116711909/42ae0c95-2123-43ee-8e44-e88955e72847)


# The Setup 

## Current
- Dual Boot with Windows
- Ext4 , 20GB
- 512MB `/boot/efi` | max `/`
- No Swap (Main Purpose was pretty much just to handle my dotfiles, maybe soon if I fully switch)

## Laptop Specs
### Asus X441na
- Intel(R) Pentium(R) N4200 @ 2.5GHz
- Intel HD Graphics 505
- 4GB RAM | 500GB HDD | DDR3
  
## Distro
- Debian Stable
- Default Kernel
- Nix : The Package Manager (more up-to-date packages)

## Login Manager
- SDDM
  ### Theme from [https://github.com/EricKotato](url)
  
## Sway
- Swaylock
- Swayidle
- Swaybg
- polkit-kde-agent
- A network manager
- Pulseaudio
- Wofi
- swaync
- Hack Font
- Fira Code

## Waybar Font
- Terminus

## Programs used
- Firefox Dev Edition
  ### Proceed with Caution, Read before copy and pasting!! :
  
### Create a directory to store APT repository keys if it doesn't exist:
```
sudo install -d -m 0755 /etc/apt/keyrings

# Import the Mozilla APT repository signing key:
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null

# The fingerprint should be 35BAA0B33E9EB396F59CA838C0BA5CE6DC6315A3
gpg -n -q --import --import-options import-show /etc/apt/keyrings/packages.mozilla.org.asc | awk '/pub/{getline; gsub(/^ +| +$/,""); print "\n"$0"\n"}'

# Next, add the Mozilla APT repository to your sources list:
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null

# Update your package list and install the Firefox .deb package:
sudo apt-get update && sudo apt-get install firefox-beta  # Replace "beta" by "devedition" for Developer Edition
```

- Neovim + Astrovim
- OBS Studio
- PCManFM
- VLC
- Foot
- Joplin
- nwg-look (used nix for this, compiling takes pretty long on stable)
- lxapperance

# Huge Credits 

### For my debian sway template to work on 
[https://github.com/agung-satria/debian-sway](url)

### For my waybar template 
[https://github.com/chaibronz/waybar_conf](url)

`definitely forgot some stuffs to add, but this is a good bit for now, i'll update this often as i slowly work on my install script`
