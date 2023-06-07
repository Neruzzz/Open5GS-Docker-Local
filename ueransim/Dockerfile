FROM ubuntu:latest


# Install dependencies
RUN apt update && \
    apt upgrade -y && \
    apt install git make g++ libsctp-dev lksctp-tools iproute2 -y && \
    apt install cmake -y

# Build the source code
RUN git clone https://github.com/aligungr/UERANSIM && \
    cd UERANSIM && \
    make