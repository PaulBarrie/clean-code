
IMAGE=dotnet
TAG=1.0.0

build:
	docker build -t $(IMAGE):$(TAG) -f Dockerfile .

debug:
	docker run -ti --entrypoint=sh -v $(PWD)/App:/app --workdir /app $(IMAGE):$(TAG)
.PHONY: run

run:
	docker run --entrypoint=dotnet -v $(PWD)/App:/app --workdir /app $(IMAGE):$(TAG) run
.PHONY: run

