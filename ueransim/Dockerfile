# Todo UERANSIM
#TODO Figure out how to set up or commuicate with all the other services and the command/yaml on the compose for configuration

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