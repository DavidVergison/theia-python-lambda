#!/bin/sh

DOCKER_VERSION=docker-19.03.8.tgz
RUN set -eux; \
	if ! wget -O docker.tgz "https://download.docker.com/linux/static/stable/x86_64/${DOCKER_VERSION}"; then \
		echo >&2 "error: failed to download '${DOCKER_VERSION}' from 'static/stable' for 'x86_64'"; \
		exit 1; \
	fi; \
	\
	tar --extract \
		--file docker.tgz \
		--strip-components 1 \
		--directory /usr/local/bin/ \
	; \
	rm docker.tgz; \
	\
	dockerd --version; \
	docker --version
