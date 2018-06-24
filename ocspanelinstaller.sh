#!/bin/bash
# Created by Steven Indarto
# Hak Cipta Steven Indato Oetomo

if [[ -e /etc/debian_version ]]; then
	OS=debian
elif [[ -e /etc/centos-release || -e /etc/redhat-release ]]; then
	OS=centos
fi

if [[ ! -e /usr/bin/curl ]]; then
	if [[ "$OS" = 'centos' ]]; then
	yum -y update && yum -y upgrade
	yum -y install wget curl
	else
	apt-get -y update && apt-get -y upgrade
	apt-get -y install wget curl
	fi
fi

wget -O /etc/panel.sh https://raw.githubusercontent.com/daybreakersx/ocspanel-autoscript/master/ocspanel.sh && clear && mkdir -p /etc/sistem/secure && mv /etc/panel.sh /etc/sistem/secure/panel.sh && chmod +x /etc/sistem/secure/panel.sh && bash /etc/sistem/secure/panel.sh