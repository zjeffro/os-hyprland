#!/bin/bash

gpg --keyserver keyserver.ubuntu.com --recv-keys 204DD8AEC33A7AFF

apt install --yes --option Acquire::Retries=5 --option Acquire::http::Timeout=100 \
    sudo \
    debootstrap \
    germinate \
    grub-efi-amd64-bin \
    grub-pc-bin \
    isolinux \
    mtools \
    ovmf \
    qemu-efi \
    qemu-kvm \
    squashfs-tools \
    xorriso \
    zsync \
    build-essential \
    apt-utils \
    dosfstools \
    git
    
make

mkdir -p builds/
mv build/pikaos/22.10/pikaos_22*.iso builds/
