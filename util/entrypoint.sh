#!/bin/bash

/lib/systemd/systemd
touch sample.txt
#Backup
mv -f /etc/default/isc-dhcp-server /etc/default/isc-dhcp-server.backup
mv -f /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.backup

#Replace
mv -f util/isc-dhcp-server /etc/default/isc-dhcp-server
mv -f util/dhcpd.conf /etc/dhcp/dhcpd.conf

systemctl enable isc-dhcp-server
systemctl restart isc-dhcp-server

tail -f /dev/null
