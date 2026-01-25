# Logrotate based on openSUSE Leap 16.0
FROM ghcr.io/fab-infra/base-image:opensuse16.0

# Logrotate
RUN zypper in -y logrotate &&\
	zypper clean -a &&\
	rm -f /etc/logrotate.d/*

# Files
COPY ./root /
RUN chmod a+rwX /var/lib/misc
