IMAGE=mcandre/docker-ndenv

all: run

build: Dockerfile
	docker build -t $(IMAGE) .

run: clean-containers build
	docker run --rm $(IMAGE) bash -lic 'ndenv --version' 2>/dev/null
	docker run --rm $(IMAGE) bash -lic 'ndenv install 0.11.6 && echo 0.11.6 > .node-version && node --version' 2>/dev/null

clean-containers:
	-docker ps -a | grep -v IMAGE | awk '{ print $$1 }' | xargs docker rm -f

clean-images:
	-docker images | grep -v IMAGE | grep $(IMAGE) | awk '{ print $$3 }' | xargs docker rmi -f

clean-layers:
	-docker images | grep -v IMAGE | grep none | awk '{ print $$3 }' | xargs docker rmi -f

clean: clean-containers clean-images clean-layers

dockerlint:
	$(shell npm bin)/dockerlint

lint: dockerlint

publish:
	docker push $(IMAGE)
