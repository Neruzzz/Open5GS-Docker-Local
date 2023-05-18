ARG ROOT_CONTAINER=registry.gitlab.bsc.es/ppc/software/open5gs/base-open5gs
FROM $ROOT_CONTAINER

# This is for the TUN fo the userplane, it can also be created and changed or created with the swarm
#RUN ip tuntap add name ogstun mode tun && \
#    ip addr add 10.45.0.1/16 dev ogstun && \
#    ip addr add 2001:db8:cafe::1/48 dev ogstun && \
#    ip link set ogstun up


# Build Open5GS
RUN git clone https://github.com/open5gs/open5gs && \
    cd open5gs && \
    meson build --prefix=`pwd`/install && \
    ninja -C build

RUN cd open5gs/build && \
    ninja install

COPY open5gs/setup.sh /

RUN chmod +x setup.sh