#!/bin/bash

#Backup
mv -f /etc/default/isc-dhcp-server /etc/default/isc-dhcp-server.backup
mv -f /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.backup

#Replace
mv -f util/isc-dhcp-server /etc/default/isc-dhcp-server
mv -f util/dhcpd.conf /etc/dhcp/dhcpd.conf

#Enable Promiscuous Mode in eth0
#sudo ifconfig eth0 promisc

#Delete initiated dhcpd pid, consult journalctl -xe | grep dhcp after restart isc-dhcp-server
#rm /var/run/dhcpd.pid

#systemctl enable isc-dhcp-server
#systemctl restart isc-dhcp-server

#tail -f /dev/null
