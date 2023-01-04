#!/bin/sh -ex

exec /usr/sbin/logrotate -l /dev/stdout /etc/logrotate.conf
