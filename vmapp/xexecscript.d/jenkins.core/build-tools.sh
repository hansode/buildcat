#!/bin/bash
#
# requires:
#  bash
#
set -e

declare chroot_dir=$1

chroot $1 $SHELL -ex <<'EOS'
  yum install -y \
    which tar \
    qemu-kvm qemu-img \
    parted kpartx \
    gcc gcc-c++ \
    rpm-build automake createrepo \
    openssl-devel zlib-devel
EOS
