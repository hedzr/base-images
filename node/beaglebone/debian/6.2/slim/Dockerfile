# AUTOGENERATED FILE
FROM resin/beaglebone-debian:jessie

ENV NODE_VERSION 6.2.2

RUN buildDeps='curl' \
	&& set -x \
	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \
	&& rm -rf /var/lib/apt/lists/* \
	&& curl -SLO "http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz" \
	&& echo "ecaa5ccdad2d3e9efc8944e5c57971753bacbd7c171b6a4445e76e5fb9ebc69b  node-v6.2.2-linux-armv7l.tar.gz" | sha256sum -c - \
	&& tar -xzf "node-v$NODE_VERSION-linux-armv7l.tar.gz" -C /usr/local --strip-components=1 \
	&& rm "node-v$NODE_VERSION-linux-armv7l.tar.gz" \
	&& apt-get purge -y --auto-remove $buildDeps \
	&& npm config set unsafe-perm true -g --unsafe-perm \
	&& rm -rf /tmp/*

CMD ["echo","'No CMD command was set in Dockerfile! Details about CMD command could be found in Dockerfile Guide section in our Docs. Here's the link: http://docs.resin.io/#/pages/using/dockerfile.md"]
