#!/bin/bash

# Clean sysctl config directories
rm -rf /usr/lib/sysctl.d/* /run/sysctl.d/* /etc/sysctl.d/*

sed -i "/vm.memfd_noexec/d" /etc/sysctl.conf
echo "vm.memfd_noexec = 0" >> /etc/sysctl.conf

# wrong runtime value and wrong persistent configuration
sysctl -w vm.memfd_noexec="0"
