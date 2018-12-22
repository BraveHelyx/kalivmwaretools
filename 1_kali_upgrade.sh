#!/bin/sh
echo "Running commands to update and upgrade Kali-Rolling."
echo "#### Checking Kali repositories are present."
if ! grep -Fxq "deb http://http.kali.org/kali kali-rolling main non-free contrib" /etc/apt/sources.list
then
    echo "\tSources not present. Appending..."
    echo "\ndeb http://http.kali.org/kali kali-rolling main non-free contrib\n" >> /etc/apt/sources.list
fi

echo "\n#### Upgrading system..."
apt update
apt upgrade && apt -y full-upgrade

echo "Done. Rebooting..."
reboot
