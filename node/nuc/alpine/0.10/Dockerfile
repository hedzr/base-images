# AUTOGENERATED FILE
FROM resin/nuc-alpine-buildpack-deps:latest

ENV NODE_VERSION 0.10.45

# Install dependencies
RUN apk add --no-cache libgcc libstdc++ libuv

RUN curl -SLO "http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-amd64.tar.gz" \
	&& echo "be78c7cb25829fb57dec29bfecfb990f4e37ca45d57f976d954716fa7f69cdcd  node-v0.10.45-linux-alpine-amd64.tar.gz" | sha256sum -c - \
	&& tar -xzf "node-v$NODE_VERSION-linux-alpine-amd64.tar.gz" -C /usr/local --strip-components=1 \
	&& rm "node-v$NODE_VERSION-linux-alpine-amd64.tar.gz" \
	&& npm config set unsafe-perm true -g --unsafe-perm \
	&& rm -rf /tmp/*

CMD ["echo","'No CMD command was set in Dockerfile! Details about CMD command could be found in Dockerfile Guide section in our Docs. Here's the link: http://docs.resin.io/#/pages/using/dockerfile.md"]
