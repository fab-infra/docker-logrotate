# Logrotate based on openSUSE Leap 15.6
FROM ghcr.io/fab-infra/base-image:opensuse15.6

# Logrotate
RUN zypper in -y logrotate &&\
	zypper clean -a &&\
	rm -f /etc/logrotate.d/*

# Files
COPY ./root /
RUN chmod a+rwX /var/lib/misc
