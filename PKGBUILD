# Maintainer: Yamada Hayao <shun819.mail@gmail.com>

pkgname=hayao-base
pkgver=1
pkgrel=1
pkgdesc='ハヤオのArchLinux環境を構築するためのパッケージセット'
url="https://github.com/hayao0819/hayao-arch-base"
arch=('any')
license=('GPL')
optdepends=(
    'linux-lts: bare metal support'
)

source=(
    '81-blueman.rules'
    '.bash_profile'
    '.bashrc'
    '.xprofile'
    '.zshrc'
    # '.zprofile'
    '.aliases'
    '.conkyrc'
    '.xinitrc'
)

md5sums=(
    $(
        for i in ${source[@]}; do
            echo "SKIP"
        done
    )
)

install="hayao-base.install"
depends=(
    # Xorg
    'xorg-server' 'xorg-xinit'

    # Display Manager
    'lightdm'
    'lightdm-webkit2-greeter'
    'lightdm-webkit2-theme-alter'
    #'lightdm-gtk-greeter'
    #'lightdm-gtk-greeter-settings'

    # Xfce4 base
    'exo' 'garcon' 'thunar' 'thunar-volman' 'tumbler' 'xfce4-appfinder' 'xfce4-panel' 'xfce4-power-manager' 'xfce4-session' 'xfce4-session' 'xfce4-settings' 'xfce4-terminal' 'xfconf' 'xfdesktop' 'xfwm4' 'xfwm4-themes'

    # Xfce tools
    'xfce4-whiskermenu-plugin'
    'xfce4-notifyd'
    'xfce4-pulseaudio-plugin'
    'xfce4-screenshooter'
    'xfce4-clipman-plugin'
    #'xfce4-docklike-plugin-git'
    'xfce4-calculator-plugin'

    # Theme
    'numix-cursor-theme'
    'adapta-gtk-theme-colorpack'
    'papirus-icon-theme'
    # 'papirus-libreoffice-theme'
    
    # Network
    'networkmanager' 'google-chrome' 'filezilla' 'gvfs-smb' 

    # Fonts
    'otf-source-han-code-jp' 'noto-fonts-cjk' 'noto-fonts-emoji' 'noto-fonts-extra' 'noto-fonts'

    # Archives
    'xarchiver' 'unzip-iconv' 'unrar' 'thunar-archive-plugin'

    # Bluetooth
    'bluez' 'bluez-utils' 'blueman' 'pulseaudio-bluetooth'

    # System tools
    'htop' 'gparted' 'grub-customizer' 'wget' 'ddgtk' 'tlp' 'tlpui-git' 'update-grub' 'deepin-system-monitor' 'conky'

    # Printer
    'cups' 'cups-pdf'

    # Developing tools
    'visual-studio-code-bin' 'gitkraken' 'meld' 'git'
    # 'archiso'

    # Office
    'libreoffice-still' 'libreoffice-still-ja'

    # Accessory
    'viewnior' 'leafpad' 'ulauncher' 'jstest-gtk-git' 'obs-studio'

    # Shell
    'zsh' 'powerline'
)

package(){
    mkdir -p ${pkgdir}/etc/polkit-1/rules.d/
    cp ${srcdir}/81-blueman.rules ${pkgdir}/etc/polkit-1/rules.d/

    mkdir -p ${pkgdir}/etc/skel/
    cp $(ls -d `ls -a ${srcdir} | grep -e "^\..\+$"` | grep -xv '..' | grep -xv '.') ${pkgdir}/etc/skel/
}
