IMG ?= ghcr.io/jspc/sqitch-mariadb
TAG ?= latest

.PHONY: docker-build docker-push
docker-build:
	docker build  -t $(IMG):$(TAG) .

docker-push:
	docker push $(IMG):$(TAG)
