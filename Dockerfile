FROM mooxe/node

MAINTAINER FooTearth "footearth@gmail.com"

WORKDIR /root

# update
RUN apt-fast update && \
    apt-fast upgrade -y

RUN /bin/bash -lc 'yarn global add spago purescript parcel'
RUN /bin/bash -lc 'yarn global add purescript-psa pulp bower'

ENV XDG_CACHE_HOME .cache

RUN \
	apt-fast autoremove -y && \
	apt-fast autoclean && \
	rm -rf /var/lib/apt/lists/*
