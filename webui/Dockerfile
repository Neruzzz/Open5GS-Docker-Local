FROM ubuntu:latest

RUN apt update && \
    apt install curl -y && \
    curl -sL https://deb.nodesource.com/setup_18.x | bash - && \
    apt install nodejs -y && \
    curl -fsSL https://open5gs.org/open5gs/assets/webui/install | bash -