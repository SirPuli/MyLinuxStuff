#!/bin/sh
#################################################
#				Made by SirPuli					#
#################################################


echo "SirPuli's semmi useful after install scrypt"

echo "Username:"
read USER_NAME
HOME_DIR="/home/$USER_NAME"

###Update
echo "Update?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo pacman -Syyu; break;;
        No ) break;;
    esac
done

###Installing from oficial repos

sudo pacman -S --needed git base-devel wget lolcat htop noto-fonts-emoji
sudo pacman -S --needed lutris steam wine-staging winetricks lib32-gnutls lib32-libldap libgpg-error lib32-libgpg-error lib32-sqlite dosbox
sudo pacman -S --needed nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader lib32-vulkan-icd-loader lib32-libpulse
sudo pacman -S --needed giflib lib32-giflib libpng lib32-libpng libldap gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs
sudo pacman -S --needed gimp smplayer teamspeak3 discord parcellite qemu virt-manager edk2-ovmf terminator cmatrix sl

###Installing from aur
yay -S etcher-bin expressvpn expressvpn-gui intellij-idea-ultimate-edition multimc5 multimc-curseforge latte-dock-git layan-kde-git zoom timeshift-bin

###Installing GE Proton
install_ge_proton(){
    DEFAULT_GE_VERSION="6.5-GE-2"
    PROTON_DIR="$HOME_DIR/.steam/root/compatibilitytools.d/"

    mkdir $PROTON_DIR

    echo ""
    echo "The default Proton version is $DEFAULT_GE_VERSION. Do you want to install another version?"
    echo "Version to install(leave empty for default): "
    read -r CUSTOM_GE_VERSION
    if [ '$CUSTOM_GE_VERSION' = '' ]
        then
            wget -P $PROTON_DIR https://github.com/GloriousEggroll/proton-ge-custom/releases/download/$DEFAULT_GE_VERSION/Proton-$DEFAULT_GE_VERSION.tar.gz
            tar -xf $PROTON_DIR/Proton-$DEFAULT_GE_VERSION.tar.gz -C $PROTON_DIR
        else
            wget -P $PROTON_DIR https://github.com/GloriousEggroll/proton-ge-custom/releases/download/$CUSTOM_GE_VERSION/Proton-$CUSTOM_GE_VERSION.tar.gz
            tar -xf $PROTON_DIR/Proton-$CUSTOM_GE_VERSION.tar.gz -C $PROTON_DIR
    fi
}
echo "Install Glorious Eggroll's Proton?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) install_ge_proton; break;;
        No ) break;;
    esac
done
