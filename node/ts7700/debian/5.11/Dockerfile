# AUTOGENERATED FILE
FROM resin/ts7700-buildpack-deps:jessie

ENV NODE_VERSION 5.11.1

RUN curl -SLO "http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-armel.tar.gz" \
	&& echo "9b5ed04b80a9785f0fe3da37a7c23e6ad46e431358d6d1d646cb9d66ac26c35a  node-v5.11.1-linux-armel.tar.gz" | sha256sum -c - \
	&& tar -xzf "node-v$NODE_VERSION-linux-armel.tar.gz" -C /usr/local --strip-components=1 \
	&& rm "node-v$NODE_VERSION-linux-armel.tar.gz" \
	&& npm config set unsafe-perm true -g --unsafe-perm \
	&& rm -rf /tmp/*

CMD ["echo","'No CMD command was set in Dockerfile! Details about CMD command could be found in Dockerfile Guide section in our Docs. Here's the link: http://docs.resin.io/#/pages/using/dockerfile.md"]
