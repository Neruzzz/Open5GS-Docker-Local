#!/bin/bash

# Open5GS
docker pull registry.gitlab.bsc.es/ppc/software/open5gs/base-open5gs:local:arm
docker pull registry.gitlab.bsc.es/ppc/software/open5gs/base-open5gs:local:amd

docker manifest create registry.gitlab.bsc.es/ppc/software/open5gs/base-open5gs:local:latest \
--amend registry.gitlab.bsc.es/ppc/software/open5gs/base-open5gs:arm \
--amend registry.gitlab.bsc.es/ppc/software/open5gs/base-open5gs:amd

docker manifest push --purge registry.gitlab.bsc.es/ppc/software/open5gs/base-open5gs:local:latest

# UERANSIM
docker pull registry.gitlab.bsc.es/ppc/software/open5gs/ueransim:local:arm
docker pull registry.gitlab.bsc.es/ppc/software/open5gs/ueransim:local:amd

docker manifest create registry.gitlab.bsc.es/ppc/software/open5gs/ueransim:local:latest \
--amend registry.gitlab.bsc.es/ppc/software/open5gs/ueransim:local:arm \
--amend registry.gitlab.bsc.es/ppc/software/open5gs/ueransim:local:amd

docker manifest push --purge registry.gitlab.bsc.es/ppc/software/open5gs/ueransim:local:latest

# MONGO
docker pull registry.gitlab.bsc.es/ppc/software/open5gs/open5gs-mongo:arm
docker pull registry.gitlab.bsc.es/ppc/software/open5gs/open5gs-mongo:amd

docker manifest create registry.gitlab.bsc.es/ppc/software/open5gs/open5gs-mongo:latest \
--amend registry.gitlab.bsc.es/ppc/software/open5gs/open5gs-mongo:arm \
--amend registry.gitlab.bsc.es/ppc/software/open5gs/open5gs-mongo:amd

docker manifest push --purge registry.gitlab.bsc.es/ppc/software/open5gs/open5gs-mongo:latest


# Clean up all the images to leave just the latest tag ones
docker rmi $(sudo docker images -f "dangling=true" -q)

docker rmi --force  registry.gitlab.bsc.es/ppc/software/open5gs/base-open5gs:local:arm
docker rmi --force  registry.gitlab.bsc.es/ppc/software/open5gs/base-open5gs:local:amd

docker rmi --force  registry.gitlab.bsc.es/ppc/software/open5gs/ueransim:local:arm
docker rmi --force  registry.gitlab.bsc.es/ppc/software/open5gs/ueransim:local:amd

docker rmi --force registry.gitlab.bsc.es/ppc/software/open5gs/open5gs-mongo:arm
docker rmi --force registry.gitlab.bsc.es/ppc/software/open5gs/open5gs-mongo:amd
