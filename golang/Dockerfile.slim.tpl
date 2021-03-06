FROM #{FROM}

ENV GO_VERSION #{GO_VERSION}

RUN buildDeps='curl gcc g++ git' \
	&& set -x \
	&& apt-get update && apt-get install -y $buildDeps \
	&& rm -rf /var/lib/apt/lists/* \
	&& mkdir -p /usr/local/go \
	&& curl -SLO "#{BINARY_URL}" \
	&& echo "#{CHECKSUM}" | sha256sum -c - \
	&& tar -xzf "go$GO_VERSION.linux-#{TARGET_ARCH}.tar.gz" -C /usr/local/go --strip-components=1 \
	&& rm -f go$GO_VERSION.linux-#{TARGET_ARCH}.tar.gz

ENV GOROOT /usr/local/go
ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH

COPY go-wrapper /usr/local/bin/

CMD ["echo","'No CMD command was set in Dockerfile! Details about CMD command could be found in Dockerfile Guide section in our Docs. Here's the link: http://docs.resin.io/#/pages/using/dockerfile.md"]
