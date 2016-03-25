Run `keepassx` in a Docker container.

To minimally launch the application, run:

    $ docker run --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY \
	      mbodenhamer/keepassx

In practice, however, you will probably want to give the container access to a specific directory containing the database file(s) of interest.

    $ docker run --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY \
	      -v /path/to/dbs:/dbs mbodenhamer/keepassx /dbs/foo.kdb

Any valid `keepassx` command-line arguments can be passed via `docker run`.
