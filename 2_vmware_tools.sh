#!/bin/sh
echo "Running commands to install open-vm-tools (OVT) for Vmware Fusion."
apt -y --reinstall install open-vm-tools-desktop fuse
echo "Done. Rebooting..."
reboot
