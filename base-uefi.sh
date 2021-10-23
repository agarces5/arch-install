#!/bin/bash

#Variables
user=agarces
password=password
zone=Europe
city=Madrid
lang=es_ES.UTF-8
keymap=es
hostname=archLinux

#Configure locale
ln -sf /usr/share/zoneinfo/$zone/$city /etc/localtime
hwclock --systohc
sed -i '200s/.//' /etc/locale.gen
locale-gen
echo "LANG=$lang" >> /etc/locale.conf
echo "KEYMAP=$keymap" >> /etc/vconsole.conf
echo "$hostname" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 $hostname.localdomain $hostname" >> /etc/hosts
echo root:$password | chpasswd

# Install packages

pacman -S grub efibootmgr networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools reflector base-devel linux-headers avahi xdg-user-dirs xdg-utils gvfs gvfs-smb nfs-utils inetutils dnsutils bluez bluez-utils cups hplip alsa-utils pulseaudio pavucontrol bash-completion openssh rsync reflector acpi acpi_call tlp virt-manager qemu qemu-arch-extra edk2-ovmf bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft ipset firewalld flatpak sof-firmware nss-mdns acpid os-prober ntfs-3g terminus-font intel-ucode mesa mesa-demos

pacman -S --noconfirm xf86-video-intel
# pacman -S --noconfirm nvidia nvidia-utils nvidia-settings

#Configure grub
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

#Enable all services
systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable cups.service
systemctl enable sshd
systemctl enable avahi-daemon
systemctl enable tlp 
systemctl enable reflector.timer
systemctl enable fstrim.timer
systemctl enable libvirtd
systemctl enable firewalld
systemctl enable acpid

#User config
useradd -m $user 
echo $user:$password | chpasswd
usermod -aG libvirt,audio,lp,optical,storage,video,wheel,games,power,scanner,root $user

echo "$user ALL=(ALL) ALL" >> /etc/sudoers.d/$user

printf "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m\n"
