# AUTOGENERATED FILE
FROM resin/ts4900-buildpack-deps:wheezy

ENV NODE_VERSION 4.4.5

RUN curl -SLO "http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz" \
	&& echo "2ce99cbfaef7a8a0e8119a3e1303015f5bed6e745c90a95b3dcd6658ad44035b  node-v4.4.5-linux-armv7l.tar.gz" | sha256sum -c - \
	&& tar -xzf "node-v$NODE_VERSION-linux-armv7l.tar.gz" -C /usr/local --strip-components=1 \
	&& rm "node-v$NODE_VERSION-linux-armv7l.tar.gz" \
	&& npm config set unsafe-perm true -g --unsafe-perm \
	&& rm -rf /tmp/*

CMD ["echo","'No CMD command was set in Dockerfile! Details about CMD command could be found in Dockerfile Guide section in our Docs. Here's the link: http://docs.resin.io/#/pages/using/dockerfile.md"]
