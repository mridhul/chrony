FROM alpine:3.3

RUN apk add --no-cache \
        bash \
	coreutils \
	chrony \
	vim \
	tzdata
COPY chrony.sh /usr/bin/
COPY chrony.conf /var/lib/chrony/chrony.conf

ENV TZ Asia/Kolkata

ENTRYPOINT ["chrony.sh"]
