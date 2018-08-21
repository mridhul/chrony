FROM alpine:3.3

RUN apk add --no-cache \
        bash \
	coreutils \
	chrony \
	vim
COPY chronyd.sh /usr/bin/

ENTRYPOINT ["chronyd.sh"]
