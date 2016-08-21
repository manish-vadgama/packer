#!/bin/bash

sudo yum install gcc make gcc-c++ kernel-devel-`uname -r` perl -y

sudo yum groupinstall 'Development Tools' -y

sudo mkdir /mnt/install

VBOX_VERSION=$(cat /home/vagrant/.vbox_version)

sudo mount -o loop /home/vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt/install

sudo sh /mnt/install/VBoxLinuxAdditions.run

sudo umount /mnt/install

sudo rm -rf /home/vagrant/VBoxGuestAdditions_*.iso
