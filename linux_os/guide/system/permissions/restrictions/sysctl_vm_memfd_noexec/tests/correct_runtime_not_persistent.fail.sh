#!/bin/bash

# Clean sysctl config directories
rm -rf /usr/lib/sysctl.d/* /run/sysctl.d/* /etc/sysctl.d/*

sed -i "/vm.memfd_noexec/d" /etc/sysctl.conf

# correct runtime value, but nothing persists it across reboot
sysctl -w vm.memfd_noexec="1"
