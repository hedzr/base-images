# AUTOGENERATED FILE
FROM resin/raspberrypi-buildpack-deps:jessie

ENV NODE_VERSION 0.12.14

RUN curl -SLO "http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv6hf.tar.gz" \
	&& echo "f1613d3f38f160a6e8e6f51cee8aea7edd459d5730b12067ac63b7955b93dd63  node-v0.12.14-linux-armv6hf.tar.gz" | sha256sum -c - \
	&& tar -xzf "node-v$NODE_VERSION-linux-armv6hf.tar.gz" -C /usr/local --strip-components=1 \
	&& rm "node-v$NODE_VERSION-linux-armv6hf.tar.gz" \
	&& npm config set unsafe-perm true -g --unsafe-perm \
	&& rm -rf /tmp/*

CMD ["echo","'No CMD command was set in Dockerfile! Details about CMD command could be found in Dockerfile Guide section in our Docs. Here's the link: http://docs.resin.io/#/pages/using/dockerfile.md"]
