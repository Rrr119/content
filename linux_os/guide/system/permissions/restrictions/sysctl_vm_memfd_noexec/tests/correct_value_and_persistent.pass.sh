#!/bin/bash

# Clean sysctl config directories
rm -rf /usr/lib/sysctl.d/* /run/sysctl.d/* /etc/sysctl.d/*

sed -i "/vm.memfd_noexec/d" /etc/sysctl.conf
echo "vm.memfd_noexec = 1" >> /etc/sysctl.conf

# correct runtime value and persistent configuration
sysctl -w vm.memfd_noexec="1"
