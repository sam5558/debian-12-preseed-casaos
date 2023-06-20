#!/bin/sh
#
# ssh post-install

# Permit Root login:
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

# Setup casaos installation
# Download startup script and make it executable
wget -O /root/casaos_installation.sh https://github.com/sam5558/debian-12-preseed-casaos/raw/main/casaos_installation.sh
chmod +x /root/casaos_installation.sh

# Add script to be executed on boot then removed once ran
wget -O /etc/rc.local https://github.com/sam5558/debian-12-preseed-casaos/raw/main/rc.local
chmod 755 /etc/rc.local
