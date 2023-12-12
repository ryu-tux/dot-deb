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
- Neovim + Astrovim
- OBS Studio
- PCManFM
- VLC
- Foot
- Joplin
- nwg-look (used nix for this, compiling takes pretty long on stable)
- lxapperance

  ### Install Script (Not yet tested, do not try until this warning is gone.)
  - Clone repo
     - `git clone https://github.com/ryu-tux/dot-deb.git`
  - Append chmod to `buckle.sh`
     - `chmod a+x buckle.sh`
  - Launch Script
      - `./buckle.sh`

    ### Once Again, my install script is not yet fully working, I will update this ASAP. ###

# Huge Credits 

### For my debian sway template to work on 
[https://github.com/agung-satria/debian-sway](url)

### For my waybar template 
[https://github.com/chaibronz/waybar_conf](url)


