FROM resin/armv7hf-systemd:jessie

LABEL io.resin.device-type="raspberrypi2"

RUN echo "deb http://archive.raspbian.org/raspbian jessie main contrib non-free rpi firmware" >>  /etc/apt/sources.list \
	&& apt-key adv --keyserver pgp.mit.edu  --recv-key 0x9165938D90FDDD2E \
	&& apt-key adv --keyserver pgp.mit.edu --recv-keys 0x4404DDEE92BF1079 \
	&& echo "deb http://resin-packages.s3-website-us-east-1.amazonaws.com/raspbian resin main" >> /etc/apt/sources.list.d/resin.list

COPY resin-pinning /etc/apt/preferences.d/

RUN apt-get update && apt-get install -y --no-install-recommends \
		less \
		libraspberrypi-bin \
		module-init-tools \
		nano \
		net-tools \
		ifupdown \
		iputils-ping \
		i2c-tools \
		usbutils \		
	&& rm -rf /var/lib/apt/lists/*
