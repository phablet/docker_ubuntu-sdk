FROM phablet/ubuntu-sdk-frameworks:trusty

RUN dpkg --add-architecture i386 \
	&& apt-get update \
	&& apt-get -y --force-yes --no-install-recommends install \
		ubuntu-emulator \
		ubuntu-emulator-runtime:i386 \
		ubuntu-sdk \
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*
