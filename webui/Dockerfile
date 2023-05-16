ARG ROOT_CONTAINER=registry.gitlab.bsc.es/ppc/software/open5gs/open5gs
FROM $ROOT_CONTAINER

RUN apt update && \
    apt install curl -y && \
    curl -sL https://deb.nodesource.com/setup_18.x | bash - && \
    apt install nodejs -y

RUN cd open5gs/webui && \
    npm ci

CMD ["npm", "run", "dev"]