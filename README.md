[![](https://travis-ci.org/mbodenhamer/docker-keepassx.svg?branch=master)](https://travis-ci.org/mbodenhamer/docker-keepassx)

Dockerized [KeePassX](https://www.keepassx.org/).

## Usage

Suppose you have a database named `foo.kdb` in your current directory that you wish to open in KeePassX. The application can be invoked like so:

    $ docker run --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY \
	      -v $(pwd):/files mbodenhamer/keepassx foo.kdb

In general, the directory containing the database files of interest needs to be mapped to the container's `/files` volume.
