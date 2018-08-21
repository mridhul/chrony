FROM alpine:3.3

RUN apk add --no-cache \
        bash \
	coreutils \
	chrony \
	vim
COPY chrony.sh /usr/bin/

ENTRYPOINT ["chrony.sh"]
