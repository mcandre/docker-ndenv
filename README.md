# docker-ndenv - a Docker container for ndenv (+node-build)

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-ndenv/

# EXAMPLE

```
$ make
docker run --rm mcandre/docker-ndenv bash -lic 'ndenv --version' 2>/dev/null
ndenv 0.4.0-4-ga339097
docker run --rm mcandre/docker-ndenv bash -lic 'ndenv install 0.11.6 && echo 0.11.6 > .node-version && node --version' 2>/dev/null
v0.11.6
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)
