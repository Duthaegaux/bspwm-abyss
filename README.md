# bspwm_dotfiles
 Customized for my neeeds bspwm.


As the base I used bspwm_nord from prolinux410 (https://gitlab.com/prolinux410/owl_dots/-/tree/main/bspwm/bspwm_nord). Thx a lot!

I changed it to use on my laptop (HP EliteBook 840 G3) with 1366x768 resolution.

As for me, I edited Information panel:
- Added battery indicator, changed pulseaudio module and swap places icon a little bit
- Changed text color for all indicators to white
- Added some hotkeys such as super+shift+s for flameshot screenshot (like in windows lol)
- Deleted powermenu button, use super+ctrl+p to shutdown and super+ctrl+r to reboot

Hope you enjoy this custom, bye ;D

## Installation
First, you need install some packages, start with xorg

```sudo pacman -S xorg xorg-xinit xorg-server xorg-xset xorg-xsetroot xorg-xrandr xorg-xrdb```

I prefer with main video driver also install this one

```sudo pacman -S xf86-video-fbdev```

Second, install more packages.

```sudo pacman -S pulseaudio pavucontrol firefox bspwm picom rofi sxhkd conky htop viewnior nemo links cmus neofetch scrot ranger neovim mpv unzip fish alacritty ttf-nerd-fonts-symbols feh jq ueberzug w3m imagemagick ghostscript```

Then, copy .xinitrc in ~ folder. Then copy bspwm folder in ~/.config.

When boot and login in your Arch user just write 

```startx```

For cursors, themes, font, icons I used same with prolinux410/owl_dots/bspwm_nord (link higher) and software too XD
