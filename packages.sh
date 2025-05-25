#!/bin/bash

# Arquivo de configuração
CONFIG_FILE="/etc/zypp/zypp.conf"

# Descomenta a linha que define o número de conexões simultâneas
sudo sed -i 's/^# *\(download\.max_concurrent_connections *= *5\)/\1/' "$CONFIG_FILE"

# Da refresh nos repositórios
sudo env ZYPP_CURL2=1 zypper ref

# Distribution update
sudo env ZYPP_PCK_PRELOAD=1 zypper dup

# Removendo oq tem no display
sudo rm /etc/systemd/system/display-manager.service

# Installando Patterns
sudo env ZYPP_PCK_PRELOAD=1 zypper -n in -t pattern x11 x11_yast yast2_desktop yast2_basis multimedia laptop office games kvm_server kvm_tools

# Instalando Pacotes
sudo env ZYPP_PCK_PRELOAD=1 zypper -n in hyprland hyprland-devel xdg-desktop-portal xdg-desktop-portal-hyprland hyprland-qt-support hyprpolkitagent sddm-qt6 hyprland-qtutils kitty thunar thunar-font-manager thunar-archive-plugin mpv vlc opi qutebrowser firefox nvim gedit font-manager pipewire pipewire-pulseaudio pipewire-alsa wireplumber pipewire-jack pavucontrol libqt5-qtwayland libqt5-qtwayland-32bit qt6-wayland nnn qt5ct qt6ct NetworkManager-connection-editor kvantum-qt6 kvantum-qt5 kvantum-manager-lang kvantum-themes kvantum-manager nwg-look xdg-user-dirs xdg-user-dirs-gtk xdg-user-dirs-lang xdg-user-dirs-gtk-lang nwg-look nwg-displays engrampa zsh fzf fzf-zsh-integration fzf-bash-integration fd fd-bash-completion fd-zsh-completion waybar rofi-wayland dunst brightnessctl yazi cliphist lutris steam ProtonPlus fontawesome-fonts ripgrep flatpak mason mason-vim breeze6-cursors dmz-icon-theme-cursors oxygen6-cursors

#Flatpaks
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub com.vysp3r.ProtonPlus
flatpak install flathub dev.vencord.Vesktop
flatpak install flathub io.gitlab.adhami3310.Impression



sudo opi -n codecs 


# Arrumando sddm
sudo systemctl enable sddm.service
sudo systemctl set-default graphical.targetflatpak

# Criando os diretórios padrões
xdg-user-dirs-update
# Mudando o Shell
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp -r .config ~
cp -r .local ~

#Arrumar os plugins com overview
#Eww ou waybar ou ignis ou ags

