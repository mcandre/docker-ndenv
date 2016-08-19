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

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Docker Toolbox](https://www.docker.com/toolbox)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install dockertoolbox
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install virtualbox make
```

* [DockerToolbox-1.8.2c.exe](https://github.com/docker/toolbox/releases/download/v1.8.2c/DockerToolbox-1.8.2c.exe)