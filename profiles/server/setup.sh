#!/bin/sh

for i in dbus ntpd sshd syslog-ng vixie-cron xdm; do
	[ -f "/etc/init.d/$i" ] && rc-update add $i
done

echo "XSESSION=\"openbox-session\"" > /etc/env.d/90xsession

