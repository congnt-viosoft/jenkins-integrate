#!/bin/bash
dd of=ubuntu-arm.img bs=1 seek=10G count=0
mkfs.ext4 -F ubuntu-arm.img
mkdir arm-chroot
mount ubuntu-arm.img arm-chroot
wget http://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-armhf-root.tar.xz
tar -xf xenial-server-cloudimg-armhf-root.tar.xz -C arm-chroot

cp $(which qemu-arm-static) arm-chroot/usr/bin/
rm arm-chroot/etc/resolv.conf
echo 'nameserver 8.8.8.8' > arm-chroot/etc/resolv.conf
rm arm-chroot/etc/init/cloud-*

cp /root/make_inside.sh arm-chroot/.
cp /root/id_rsa_dronava* arm-chroot/.
chroot arm-chroot/ qemu-arm-static /bin/eval "$(ssh-agent -s)"
chroot arm-chroot/ qemu-arm-static /bin/ssh-add ./id_rsa_dronava
chroot arm-chroot/ qemu-arm-static /bin/bash ./make_inside.sh
