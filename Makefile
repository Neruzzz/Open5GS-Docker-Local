BASE_TAG = base-open5gs
OPEN5GS_TAG	= open5gs
MONGO_TAG = mongodb
WEBUI_TAG = webui

PREFIX = registry.gitlab.bsc.es/ppc/software/open5gs/

all: webui

baseopen: 
	docker build -f base/Dockerfile -t $(PREFIX)$(BASE_TAG) .
	docker push $(PREFIX)$(BASE_TAG)

openfivegs: baseopen
	docker build --progress=plain -f open5gs/Dockerfile -t $(PREFIX)$(OPEN5GS_TAG) . 
	docker push $(PREFIX)$(OPEN5GS_TAG)

webui: openfivegs
	docker build --progress=plain -f webui/Dockerfile -t $(PREFIX)$(WEBUI_TAG) . 
	docker push $(PREFIX)$(WEBUI_TAG)