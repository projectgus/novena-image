#!/bin/bash
if [ -z $1 ]
then
	echo "Usage: $0 [device]"
	echo "E.g. $0 /dev/mmcblk1"
	exit 1
fi

echo "Constructing a disk image on $1"
exec sudo ./novena-image.sh \
	-d $1 \
	-t mmc \
	-s jessie \
	-a pulseaudio-novena_1.0-1_all.deb \
	-a irqbalance_0.56-1ubuntu4-rmk1_armhf.deb \
	-a novena-disable-ssp_1.1-1_armhf.deb \
	-a u-boot-novena_2014.10-novena-rc2_armhf.deb \
	-l "sudo openssh-server ntp ntpdate dosfstools novena-eeprom \
            xserver-xorg-video-modesetting arandr \
	    hicolor-icon-theme gnome-icon-theme keychain \
	    avahi-daemon avahi-dnsconfd libnss-mdns debootstrap \
	    python build-essential xscreensaver vim emacs \
	    x11-xserver-utils usbutils unzip xz-utils subversion git make \
	    screen tmux read-edid powertop powermgmt-base pavucontrol \
	    p7zip-full paprefs pciutils nmap ntfs-3g network-manager-vpnc \
	    network-manager-pptp network-manager-openvpn bash-completion \
	    network-manager-iodine xchat icedove iceweasel gnupg2 \
	    git-email git-man fuse enigmail dc curl clang bridge-utils \
	    bluez bluez-tools bluez-hcidump bison bc automake autoconf \
	    pidgin alsa-utils i2c-tools hwinfo android-tools-adb \
	    android-tools-fastboot android-tools-fsutils \
	    xfce4-goodies xfce4-power-manager xfce4-mixer xfce4-terminal \
	    mousepad orage libreoffice-gtk dbus-x11 quodlibet evince-gtk \
	    tango-icon-theme network-manager-gnome synaptic \
	    gnome-orca ncurses-dev gdb lzop lzop gawk bison g++ gcc"