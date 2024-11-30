#!/bin/sh

print_wait() {
    TEXT=$1
    WAIT=$2

    echo "$TEXT"
    sleep $2
    clear
}

print_wait "Thx for choosing this rice!" 0.5

print_wait "Installing font..." 0.5
sudo pacman -S ttf-jetbrains-mono
clear

print_wait "Installing xorg..." 0.5
sudo pacman -S xorg xorg-xinit xorg-server xorg-xset xorg-xsetroot xorg-xrandr xorg-xrdb
clear

echo "Do you have Intel graphics? (Y/N) "
read intel
if [ $intel == "Y" ] || [ $intel == "y" ]
then
    sudo pacman -S xf86-video-fbdev xf86-video-intel
else
    echo "Ok"
fi
clear

echo "Do you have AMD graphics? (Y/N) "
read amd
if [ $amd == "Y" ] || [ $amd == "y" ]
then
    sudo pacman -S mesa xf86-video-amdgpu 
else
    echo "Ok"
fi
clear

echo "Do you have NVIDIA graphics? (Y/N) "
read nvidia
if [ $nvidia == "Y" ] || [ $nvidia == "y" ]
then
    sudo pacman -S nvidia-open xf86-video-nouveau xf86-video-fbdev
else
    echo "Ok"
fi
clear

print_wait "Installing more packages..." 0.5
sudo pacman -S pulseaudio pavucontrol firefox bspwm picom rofi sxhkd conky htop viewnior nemo links cmus neofetch scrot ranger neovim mpv unzip fish alacritty ttf-nerd-fonts-symbols feh jq ueberzug w3m imagemagick ghostscript lxappearance nitrogen
clear

print_wait "Installing rice..." 0.5
chmod +x .xinitrc
cp .xinitrc ~
cp -r bspwm/ ~/.config/

cp wall-03.webp ~/Downloads/
mkdir ~/Wallpaper
cp wall-03.webp ~/Wallpaper/

print_wait "Congrats!" 1.0

echo "Do you want to reboot right now? (Y/N) "
read reboot
if [ $reboot == "Y" ] || [ $reboot == "y" ]
then
    reboot
fi
clear