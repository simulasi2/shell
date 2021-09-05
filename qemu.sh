sudo apt update
sudo apt install --assume-yes wget tasksel
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt-get install --assume-yes ./chrome-remote-desktop_current_amd64.deb
sudo DEBIAN_FRONTEND=noninteractive
apt install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'
sudo systemctl disable lightdm.service
sudo echo 1 | sudo tee /sys/module/kvm/parameters/ignore_msrs
sudo apt-get install qemu uml-utilities virt-manager git wget libguestfs-tools p7zip-full -y
sudo systemctl is-active libvirtd
sudo usermod -aG kvm $USER
git clone --depth 1 --recursive https://github.com/kholia/OSX-KVM.git
echo done open https://remotedesktop.google.com/headless
